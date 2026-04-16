return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local blink_ok, blink = pcall(require, "blink.cmp")
      if blink_ok then
        capabilities = blink.get_lsp_capabilities(capabilities)
      end

      local icons = require("config.icons")

      local servers = {
        ty = {
          cmd = { "ty", "server" },
          filetypes = { "python" },
          root_markers = { "pyproject.toml", "setup.py", "requirements.txt", ".git", "pyrightconfig.json" },
        },
        ruff = {
          on_attach = function(client)
            client.server_capabilities.hoverProvider = false
          end,
        },
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
              },
              telemetry = { enable = false },
            },
          },
        },
        clangd = {},
        gopls = {},
        nil_ls = {
          settings = {
            ["nil"] = {
              formatting = {
                command = { "nixfmt" },
              },
              nix = {
                flake = {
                  autoArchive = true,
                },
              },
            },
          },
        },
      }

      for server, opts in pairs(servers) do
        opts.capabilities = vim.tbl_deep_extend("force", {}, capabilities, opts.capabilities or {})
        vim.lsp.config(server, opts)
        vim.lsp.enable(server)
      end

      vim.diagnostic.config({
        signs = false,
        virtual_text = { prefix = icons.ui.VirtualPrefix },
        update_in_insert = false,
        underline = true,
        severity_sort = true,
        float = {
          focusable = false,
          style = "minimal",
          border = "rounded",
          header = "",
          prefix = "",
        },
      })
    end,
  },
}

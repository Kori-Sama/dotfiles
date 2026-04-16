return {
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    opts = {
      overrides = {
        Normal = { bg = "None" },
        NormalFloat = { bg = "none" },
        CursorLine = { bg = "#5C6166" },
      },
    },
    config = function(_, opts)
      require("ayu").setup(opts)
      vim.cmd.colorscheme("ayu-mirage")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "ayu",
      },
    },
  },
}

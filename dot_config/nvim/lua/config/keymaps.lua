-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

map("n", "x", '"_x', { desc = "Delete char without yanking" })

map({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })

map("n", "+", "<C-a>", { desc = "Increment number" })
map("n", "-", "<C-x>", { desc = "Decrement number" })

map("n", "<leader>dw", 'vb"_d', { desc = "Delete previous word without yanking" })
map("n", "<leader>sa", "gg<S-v>G", { desc = "Select all" })

map("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New tab" })

map("n", "<leader>ws", "<cmd>split<cr><C-w>w", { desc = "Split window horizontally" })
map("n", "<leader>wv", "<cmd>vsplit<cr><C-w>w", { desc = "Split window vertically" })

map("n", "<leader>wh", "<C-w>h", { desc = "Move to left window" })
map("n", "<leader>wj", "<C-w>j", { desc = "Move to lower window" })
map("n", "<leader>wk", "<C-w>k", { desc = "Move to upper window" })
map("n", "<leader>wl", "<C-w>l", { desc = "Move to right window" })

map("n", "<leader>w=", "<C-w>=", { desc = "Equalize window sizes" })

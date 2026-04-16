-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

opt.number = true
opt.title = true
opt.autoindent = true
opt.smartindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2

opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = "split"

opt.scrolloff = 10
opt.breakindent = true
opt.wrap = false
opt.backspace = "indent,eol,start"
opt.wildignore:append({ "*/node_modules/*" })

opt.clipboard = "unnamedplus"

opt.cursorline = true
opt.termguicolors = true
opt.winblend = 0
opt.wildoptions = "pum"
opt.pumblend = 5
opt.background = "dark"

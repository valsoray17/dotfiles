require("config.lazy")
-- vim.lsp is built into Neovim, so it can be loaded directly without waiting for plugins
require("config.lsp")

-- Set the active colorscheme (swap this line to switch themes)
vim.cmd.colorscheme "catppuccin"

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.mouse = "" --nicr -- allow copy selection into system clipboard

vim.opt.number = true
vim.opt.relativenumber = true

-- optional but popular:
vim.opt.signcolumn = "yes"


require("config.lazy")
require("catppuccin").setup()
require('lualine').setup()

--set the colorscheme to it!
vim.cmd.colorscheme "catppuccin"

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.mouse = "" --nicr -- allow copy selection into system clipboard

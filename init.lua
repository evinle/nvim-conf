
require("config.lazy")
require("config.remap")

-- Enable line numbers
vim.opt.number = true

-- Enable relative line numbers (optional)
vim.opt.relativenumber = true

vim.cmd('syntax on')

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.o.background = "dark"
vim.cmd([[ colorscheme neofusion ]])

vim.cmd('hi NormalNC guibg=NONE ctermbg=NONE')

-- vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')

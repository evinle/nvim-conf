require("config.lazy")
require("config.remap")

vim.o.background = "dark"
vim.cmd([[ colorscheme poimandres ]])

vim.cmd('hi NormalNC guibg=NONE ctermbg=NONE')
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')

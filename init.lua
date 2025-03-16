require("config.lazy")
require("config.remap")

vim.o.background = "dark"
vim.cmd([[ colorscheme neofusion ]])

vim.cmd('hi NormalNC guibg=NONE ctermbg=NONE')

-- vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')

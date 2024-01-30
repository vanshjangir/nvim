require("settings")
require("maps")
require("plugins")

vim.cmd("colorscheme tokyonight-night")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd[[autocmd VimEnter * set ls=3]]
vim.opt.fillchars = {eob = " "}
dofile('/home/vansh/.config/nvim/lua/configs/toggleterm.lua')

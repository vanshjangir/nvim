require("settings")
require("maps")
require("plugins")

vim.cmd("colorscheme tokyonight-night")
vim.cmd[[autocmd VimEnter * set ls=3]]
vim.opt.fillchars = {eob = " "}

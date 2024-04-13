require("settings")
require("maps")
require("plugins")

vim.cmd("colorscheme tokyonight-night")
vim.cmd[[autocmd VimEnter * set ls=3]]
vim.cmd[[autocmd VimEnter * clearjumps]]
vim.opt.fillchars = {eob = " "}

require('transparent').clear_prefix('NvimTree')
require('transparent').clear_prefix('Telescope')
require('transparent').clear_prefix('ToggleTerm')

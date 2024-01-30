local global = vim.g
local o = vim.o


-- Map <leader> = the space key

global.mapleader = " "
global.maplocalleader = " "


-- Editor options

o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.showtabline = false
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.encoding = "UTF-8"
o.ruler = true
o.mouse = "a"
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.showcmd = true
o.showmatch = true
o.inccommand = "split"
o.termguicolors = true
o.scrolloff = 10

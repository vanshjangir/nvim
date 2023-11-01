local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- Packer
	"wbthomason/packer.nvim",

	-- Common utilities
	"nvim-lua/plenary.nvim",

	-- Icons
	"nvim-tree/nvim-web-devicons",

	-- Transparent
	"xiyaowong/transparent.nvim",

	-- Colorschema
	"EdenEast/nightfox.nvim",
	{
    	'AlexvZyl/nordic.nvim',
    	lazy = false,
    	priority = 1000,
    	config = function()
        	require 'nordic' .load()
    	end
	},
	"sainnhe/everforest",
	"frenzyexists/aquarium-vim",
	"ldelossa/vimdark",
	"tiagovla/tokyodark.nvim",
	"xfyuan/nightforest.nvim",
	"Alexis12119/nightly.nvim",
	"oxfist/night-owl.nvim",
	"numToStr/Sakura.nvim",
	"luisiacc/the-matrix.nvim",

	-- nui
	"MunifTanjim/nui.nvim",

	-- nerdtree
	"preservim/nerdtree",

    -- polyglot
    "sheerun/vim-polyglot",

	-- Minimap
	"wfxr/minimap.vim",

	-- Statusline
	{
		"nvim-lualine/lualine.nvim",
		event = "BufEnter",
		config = function()
			require("configs.lualine")
		end,
		dependencies = { "nvim-web-devicons" },
	},

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "1.2.1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
	},

	-- cmp: Autocomplete
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		config = function()
			require("configs.cmp")
		end,
	},
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"hrsh7th/cmp-nvim-lsp",

	{ "hrsh7th/cmp-path", after = "nvim-cmp" },
	{ "hrsh7th/cmp-buffer", after = "nvim-cmp" },
	
	-- LSP
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lsp")
		end,
	},

	-- Mason: Portable package manager
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- File manager
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},

	-- Show colors
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({ "*" })
		end,
	},

	-- Terminal
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("configs.toggleterm")
		end,
	},

	-- Git
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("configs.gitsigns")
		end,
	},

	-- Markdown Preview
	{
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	-- autopairs
	{
		"windwp/nvim-autopairs",
		config = function()
			require("configs.autopairs")
		end,
	},

	-- testcases
	{
		"xeluxee/competitest.nvim",
		requires = "MunifTanjim/nui.nvim",
		config = function()
			require("competitest").setup()
		end,
	},

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	},

	-- tabs
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
		},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
}

local opts = {}

require("lazy").setup(plugins, opts)

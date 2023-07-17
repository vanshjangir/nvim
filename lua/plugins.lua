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

	-- Colorschema
	"EdenEast/nightfox.nvim",

	-- nui
	"MunifTanjim/nui.nvim",

	-- nerdtree
	"preservim/nerdtree",

	-- live-server
	"turbio/bracey.vim",

    -- polyglot
    "sheerun/vim-polyglot",

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

	-- LSP
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lsp")
		end,
	},

	"onsails/lspkind-nvim",

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

	"hrsh7th/cmp-nvim-lsp",

	{ "hrsh7th/cmp-path", after = "nvim-cmp" },

	{ "hrsh7th/cmp-buffer", after = "nvim-cmp" },

	-- Mason: Portable package manager
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("configs.mason-lsp")
		end,
		after = "mason.nvim",
	},

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
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("configs.dashboard-nvim")
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
}

local opts = {}

require("lazy").setup(plugins, opts)

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
	"folke/tokyonight.nvim",

	-- nui
	"MunifTanjim/nui.nvim",

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

	-- cmp: Autocomplete
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		config = function()
			require("configs.cmp")
		end,
	},
	"hrsh7th/cmp-nvim-lsp",

	-- Snippets
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
		dependencies = { "rafamadriz/friendly-snippets" },
		build = "make install_jsregexp"
	},

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
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
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

	-- indentation 
    "sheerun/vim-polyglot",

	-- indent lines
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			require("ibl").setup()
		end,
	},

	-- Git wrapper
	"tpope/vim-fugitive",

	-- undotree
	"mbbill/undotree",
}

local opts = {}

require("lazy").setup(plugins, opts)

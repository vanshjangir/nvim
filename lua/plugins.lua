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
    {
        "hrsh7th/nvim-cmp"
    },
    {
        "L3MON4D3/LuaSnip"
    },
    {
        "hrsh7th/cmp-nvim-lsp"
    },
    {
        "neovim/nvim-lspconfig"
    },
    {
        "williamboman/mason.nvim"
    },
    {
        "williamboman/mason-lspconfig.nvim"
    },
    {
        "hrsh7th/cmp-path", after = "nvim-cmp"
    },
    {
        "hrsh7th/cmp-buffer", after = "nvim-cmp"
    },
    {
        "EdenEast/nightfox.nvim",
        config = function ()
            vim.cmd[[autocmd VimEnter * highlight! link NormalFloat Normal]]
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "BufEnter",
        config = function()
            require("lualine").setup{
                options = {
                    component_separators = { left = "", right = "" },
                    section_separators = { left = "", right = "" },
                },
                sections = {
                    lualine_c = {{ "filename", file_status = true, path = 1 }},
                }
            }
        end,
        dependencies = { "nvim-web-devicons" },
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function ()
            vim.cmd([[autocmd User TelescopePreviewerLoaded setlocal number]])
        end,
    },
    {
        "VonHeikemen/lsp-zero.nvim",
        config = function()
            require("configs.lspzero")
        end,
        branch = 'v3.x'
    },
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
            require("nvim-tree").setup {
                sync_root_with_cwd = true;
            }
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup{
                open_mapping = [[<A-c>]],
            }
        end,
    },
    {
        "windwp/nvim-autopairs",
        config = true,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,

        config = function()
            require("configs.treesitter")
        end,
    },
}

local opts = {}

require("lazy").setup(plugins, opts)

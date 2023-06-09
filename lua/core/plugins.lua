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
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = function ()
            pcall(vim.cmd, 'TSUpdate')
        end
    },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
        version = "*",
        dependencies = {"nvim-tree/nvim-web-devicons"}
    },

    {
        "folke/which-key.nvim",
        lazy = true
    },

    {
        "catppuccin/nvim",
        name = "catppuccin"
    },

    {
        "windwp/nvim-autopairs",
        config=true
    },

    {
        'nvim-lualine/lualine.nvim'
    },

    {'numToStr/Comment.nvim'}

}

local opts = {}

require('lazy').setup(plugins, opts)

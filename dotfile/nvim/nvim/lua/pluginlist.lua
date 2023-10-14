return{
-- Color Scheme
    {
         "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme kanagawa")
        end
    },
-- Tree Sitter (syntax highlighting)    
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
-- Telescope
    { 
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' } 
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },
-- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
    },
-- nvim-tree
    
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
end,
    },

-- Git Signs 
    {"lewis6991/gitsigns.nvim"},

-- LSP 
    -- { "williamboman/mason.nvim"},
    -- {"williamboman/mason-lspconfig.nvim"},
    -- {"neovim/nvim-lspconfig"},
    -- {"folke/neodev.nvim"},
-- CMP
    { "hrsh7th/cmp-path"},
    { "hrsh7th/cmp-buffer"},
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            
            'hrsh7th/cmp-nvim-lsp',
            
        },
    },
-- Comment
    {"numToStr/Comment.nvim"},
    {"JoosepAlviste/nvim-ts-context-commentstring"},
-- Toggle Term
    {'akinsho/toggleterm.nvim', version = "*", config = true},
-- Blank Line 
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
-- Auto Pairs
    {"windwp/nvim-autopairs"},
}

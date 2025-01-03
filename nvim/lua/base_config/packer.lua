return require('packer').startup(function(use)
    -- Packer can manage itself
    use ('wbthomason/packer.nvim')
    use ({
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        requires = { 'nvim-lua/plenary.nvim' }
    })
    use ({ 'catppuccin/nvim', as = 'catppuccin' })
    use ({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    -- I gotta learn harpoon & telescope properly
    use ('theprimeagen/harpoon')
    use ('mbbill/undotree')
    -- use ('nvim-treesitter/nvim-treesitter-context');
    -- This one saves a TON of keystrokes
    use ({
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    })
    -- LSP, of course
    use ({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    })
    use({
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup()
        end,
    })
    use ('norcalli/nvim-colorizer.lua')
end)

-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'lervag/vimtex'
    use 'mattn/emmet-vim'
    use 'lukas-reineke/indent-blankline.nvim'
    use {
        'themaxmarchuk/tailwindcss-colors.nvim',
        module = "tailwindcss-colors",
        -- run the setup function after plugin is loaded
        config = function ()
            -- pass config options here (or nothing to use defaults)
            require("tailwindcss-colors").setup()
        end
    }
    use 'kevinhwang91/rnvimr'
    use 'norcalli/nvim-colorizer.lua'

    -- VCS
    use 'chrisbra/csv.vim'
    use 'tpope/vim-fugitive'
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { 'lewis6991/gitsigns.nvim', tag = 'release' }

    -- THEME
    use {
        'nvim-lualine/lualine.nvim' ,
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'kyazdani42/nvim-web-devicons'
    use 'nkakouros-original/numbers.nvim'
    use 'xiyaowong/virtcolumn.nvim'
    use 'patstockwell/vim-monokai-tasty'
    use 'tomasiser/vim-code-dark'
    use 'srcery-colors/srcery-vim'
    use 'navarasu/onedark.nvim'
    use 'rebelot/kanagawa.nvim'

    -- FUNCTIONALITY
    use 'kylechui/nvim-surround'
    use 'numToStr/Comment.nvim'
    use 'windwp/nvim-autopairs'
    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
    }
    use 'abecodes/tabout.nvim'

    -- LSP
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'

    -- DEBUGGING
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'

    -- COMPLETION
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'folke/trouble.nvim'
    -- SNIPPETS
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use {
        "danymat/neogen",
        config = function()
            require('neogen').setup {}
        end,
        requires = "nvim-treesitter/nvim-treesitter",
    }

    -- NAVIGATION
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        tag = 'nightly'
    }
    use {
        'phaazon/hop.nvim',
        branch = 'v2',
        config = function()
            require'hop'.setup { keys = 'arsdheiqwfpgjluyozxcvbkmtn' }
        end
    }
    use 'christoomey/vim-tmux-navigator'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/playground'
    use 'p00f/nvim-ts-rainbow'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-github.nvim' },
        }
    }
    use {
        "benfowler/telescope-luasnip.nvim",
    }
    -- TODO: fix crash
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }
    use 'MunifTanjim/nui.nvim'
    use { 'bennypowers/nvim-regexplainer',
    config = function() require'regexplainer'.setup() end,
    requires = {
        'nvim-treesitter/nvim-treesitter',
        'MunifTanjim/nui.nvim',
    } }
    use {
        'crusj/bookmarks.nvim',
        branch = 'main',
        requires = { 'kyazdani42/nvim-web-devicons' }
    }

    -- PLUGIN-SPECIFIC CONFIGS
    require('user.cmp')
    require('user.lsp')
    require('user.telescope')
    require('user.treesitter')
    require('user.luasnip')
    require('user.lualine')
    require('user.nvim-tree')

    -- GENERAL LOADERS
    require("trouble").setup {}
    require("nvim-autopairs").setup{}
    require("indent_blankline").setup {
        show_current_context = true,
        show_current_context_start = true,
    }
    -- FIX bad one
    require'regexplainer'.setup {
        auto = true,
        filetypes = { 'sh' }
    }
    require('numbers').setup {
        excluded_filetypes = {
            'nerdtree',
            'NvimTree',
            'unite',
            'toggleterm',
        }
    }
    require('neogen').setup ({ snippet_engine = "luasnip" })
    require'colorizer'.setup { '*' }
    require("nvim-surround").setup({
        delimiters = {
            pairs = {
                ["a"] = { "<", ">" },
                ["r"] = { "[", "]" },
                ["s"] = { "(", ")" },
                ["t"] = { "{", "}" },
                ["A"] = { "< ", " >" },
                ["R"] = { "[ ", " ]" },
                ["S"] = { "( ", " )" },
                ["T"] = { "{ ", " }" },
            },
            HTML = {
                ["t"] = false,
            }
        },
    })
    require('Comment').setup {}
    require('todo-comments').setup {
        signs = false,
    }
    require('bookmarks').setup {}
    require('gitsigns').setup {
        yadm = {
            enable = true
        }
    }
    require('tabout').setup {
        tabkey = '<c-space>',
        backwards_tabkey = '<c-s-space>'
    }
    require('onedark').load()
end)

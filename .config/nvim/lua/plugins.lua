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

    -- CSV
    use 'chrisbra/csv.vim'
    use 'airblade/vim-gitgutter'
    use 'tpope/vim-fugitive'
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

    -- FUNCTIONALITY
    use 'kylechui/nvim-surround'
    use 'numToStr/Comment.nvim'
    use 'windwp/nvim-autopairs'
    -- LSP
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'
    use 'RRethy/vim-illuminate'

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
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
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
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use 'MunifTanjim/nui.nvim'
    use { 'bennypowers/nvim-regexplainer',
    config = function() require'regexplainer'.setup() end,
    requires = {
        'nvim-treesitter/nvim-treesitter',
        'MunifTanjim/nui.nvim',
    } }

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
    -- TODO: config this
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
end)

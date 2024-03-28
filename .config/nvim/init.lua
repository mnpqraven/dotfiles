require("othi")
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

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

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- TODO: tabout key
require('lazy').setup({
    -- NOTE: SYNTAX ----------------------------------------------------------
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    'nvim-telescope/telescope-ui-select.nvim',

    -- NOTE: THEME -----------------------------------------------------------
    { "catppuccin/nvim",         as = "catppuccin" },
    'rebelot/kanagawa.nvim',
    'kvrohit/mellow.nvim',
    'navarasu/onedark.nvim',
    {
        'ramojus/mellifluous.nvim',
        dependencies = { 'rktjmp/lush.nvim' },
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons', },
        tag = 'nightly'
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = function()
            require('nvim-treesitter.install').update({ with_sync = true })
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            'nvim-treesitter/playground',
            'nvim-treesitter/nvim-treesitter-context',
            'JoosepAlviste/nvim-ts-context-commentstring',
        }
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = {},
        config = function()
            require('ibl').setup()
        end
    },
    {
        'petertriho/nvim-scrollbar',
        config = function()
            require('scrollbar').setup({
                handle = { blend = 0 }
            })
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    {
        'b0o/incline.nvim',
        event = 'VeryLazy',
        dependencies = 'lewis6991/gitsigns.nvim'
    },
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- Specific languagess
            { 'simrat39/rust-tools.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            {
                'L3MON4D3/LuaSnip',
                version = "2.*",
                build = "make install_jsregexp"
            },
            -- Snippet Collection (Optional)
            -- { 'rafamadriz/friendly-snippets' },
        }
    },
    'MunifTanjim/prettier.nvim',
    {
        'laytan/tailwind-sorter.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
        build = 'cd formatter && npm i && npm run build',
        config = true,
    },
    'mfussenegger/nvim-dap',
    {
        'saecki/crates.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    },
    -- {
    --     'Lilja/zellij.nvim',
    --     config = function()
    --         require('zellij').setup()
    --     end
    -- },
    'tpope/vim-fugitive',

    'kylechui/nvim-surround',
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup({
                pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
            })
        end
    },
    {
        'folke/todo-comments.nvim',
        dependencies = 'nvim-lua/plenary.nvim',
        config = function()
            require('todo-comments').setup({
                signs = false
            })
        end
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end
    },
    'abecodes/tabout.nvim',
    -- LOCALE
    'rlue/vim-barbaric',

    {
        "danymat/neogen",
        config = function()
            require('neogen').setup({ snippet_engine = 'luasnip' })
        end,
        dependencies = "nvim-treesitter/nvim-treesitter",
    },

    {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup()
        end,
        dependencies = "nvim-treesitter/nvim-treesitter",
    },

    'mattn/emmet-vim',
    'onsails/lspkind.nvim',
    'ray-x/lsp_signature.nvim',
    {
        'folke/trouble.nvim',
        config = function()
            require("trouble").setup()
        end,
        dependencies = "nvim-tree/nvim-web-devicons",
    },
    { 'j-hui/fidget.nvim',       tag = 'legacy' },
    { 'lewis6991/gitsigns.nvim', tag = 'release' },
    'simrat39/symbols-outline.nvim',
    'rcarriga/nvim-notify',
    'stevearc/dressing.nvim',
    {
        'themaxmarchuk/tailwindcss-colors.nvim',
        module = "tailwindcss-colors",
        -- run the setup function after plugin is loaded
        config = function()
            -- pass config options here (or nothing to use defaults)
            require("tailwindcss-colors").setup()
        end
    },
    'norcalli/nvim-colorizer.lua',
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 0
            require("which-key").setup({
                plugins = {
                    spelling = { enabled = true }
                }
            })
        end,
    },
    'folke/twilight.nvim',
    {
        'ziontee113/icon-picker.nvim',
        config = function()
            require("icon-picker").setup {
                disable_legacy_commands = true
            }
        end
    },
    'RRethy/vim-illuminate',
    {
        'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async'
    },
    "luukvbaal/statuscol.nvim",
    'lervag/vimtex',
    'jose-elias-alvarez/null-ls.nvim',
    {
        'phaazon/hop.nvim',
        branch = 'v2',
        config = function()
            require('hop').setup {
                keys = 'arsdheiqwfpgjluyozxcvbkmtn'
            }
        end
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "keaising/im-select.nvim",
        config = function()
            require("im_select").setup({
                default_im_select = "keyboard-us",
                default_command = "fcitx5-remote",
            })
        end,
    }
})

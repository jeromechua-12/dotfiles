vim.pack.add({
    -- colour theme
    { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },

    -- statusline
    { src = 'https://github.com/nvim-lualine/lualine.nvim' },

    -- lsp with mason
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/mason-org/mason.nvim' },
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },

    -- cmp
    { src = 'https://github.com/hrsh7th/cmp-nvim-lsp' },
    { src = 'https://github.com/hrsh7th/cmp-buffer' },
    { src = 'https://github.com/hrsh7th/cmp-path' },
    { src = 'https://github.com/hrsh7th/cmp-cmdline' },
    { src = 'https://github.com/hrsh7th/nvim-cmp' },

    -- treesitter
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', branch = 'main' },

    -- fuzzy finder
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    { src = 'https://github.com/ibhagwan/fzf-lua' },

    -- git
    { src = 'https://github.com/tpope/vim-fugitive' },

    -- colorizer
    { src = 'https://github.com/catgoose/nvim-colorizer.lua' },
})

require('plugins.catppucin')
require('plugins.lualine')
require('plugins.lsp')
require('plugins.treesitter')
require('plugins.fzf-lua')
require('plugins.fugitive')
require('plugins.colorizer')

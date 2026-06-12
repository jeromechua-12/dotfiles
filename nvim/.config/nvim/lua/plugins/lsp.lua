-- mason
require('mason').setup()
require('mason-lspconfig').setup({
    opts = {
        ensure_installed = {
            'clangd',
            'cssls',
            'gopls',
            'html',
            'jsonls',
            'lua_ls',
            'pyright',
            'ts_ls'
        }
    }
})

-- cmp
require('blink.cmp').setup({
    keymap = { preset = 'default' },

    appearance = {
        nerd_font_variant = 'mono'
    },

    completion = {
        documentation = { auto_show = true }
    },

    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = {
        implementation = 'prefer_rust_with_warning'
    },

    signature = { enabled = true },
})

-- diagnostic
vim.diagnostic.config({
    virtual_text = true,
})

-- add file types
vim.filetype.add({
    extension = {
        tmpl = 'gotmpl',
        gotmpl = 'gotmpl',
    },
})

-- lsp configs
vim.lsp.config('lua_ls', {
    filetypes = { 'lua' },
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim', 'require' },
            },
        }
    },
})

vim.lsp.config('gopls', {
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
})

-- enable servers
vim.lsp.enable({
    'clangd',
    'cssls',
    'gopls',
    'html',
    'jsonls',
    'lua_ls',
    'pyright',
    'ts_ls'
})

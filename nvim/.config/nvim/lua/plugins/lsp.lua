-- mason
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        'basedpyright',
        'clangd',
        'cssls',
        'gopls',
        'html',
        'jsonls',
        'lua_ls',
        'ruff',
        'vtsls'
    },
})

-- cmp
require('blink.cmp').setup({
    keymap = {
        preset = 'default',
        ['<C-k>'] = { function(cmp) return cmp.show() end },
    },

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

vim.lsp.config('basedpyright', {
    settings = {
        basedpyright = {
            analysis = {
                typeCheckingMode = 'standard',
            },
        },
    },
})

-- enable servers
vim.lsp.enable({
    'basedpyright',
    'clangd',
    'cssls',
    'gopls',
    'html',
    'jsonls',
    'lua_ls',
    'ruff',
    'vtsls'
})

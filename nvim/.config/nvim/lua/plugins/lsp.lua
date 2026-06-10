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
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)

            -- For `mini.snippets` users:
            -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
            -- insert({ body = args.body }) -- Insert at cursor
            -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
            -- require("cmp.config").set_onetime({ sources = {} })
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        -- { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
    }, {
        { name = 'buffer' },
    })
})

-- diagnostic
vim.diagnostic.config({
    virtual_text = true,
})

-- lua lsp config
vim.lsp.config('lua_ls', {
    filetypes = { 'lua' },
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim', 'require' },
            },
            -- workspace = {
            --     -- Make server aware of Neovim runtime files
            --     library = vim.api.nvim_get_runtime_file("", true),
            -- },
        }
    },
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

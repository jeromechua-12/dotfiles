local ensure_installed = {
    'c',
    'css',
    'dockerfile',
    'go',
    'gotmpl',
    'html',
    'java',
    'javascript',
    'json',
    'lua',
    'markdown',
    'markdown_inline',
    'python',
    'sql',
    'typescript',
    'vim',
    'vimdoc',
}
-- check if already installed
local installed = require('nvim-treesitter.config').get_installed()
local to_install = vim.iter(ensure_installed)
    :filter(function(parser)
        return not vim.tbl_contains(installed, parser)
    end)
    :totable()
require('nvim-treesitter').install(to_install)

vim.api.nvim_create_autocmd('FileType', {
    pattern  = ensure_installed,
    callback = function()
        pcall(vim.treesitter.start)
        -- folding
        vim.opt.foldmethod = 'expr'
        vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.opt.foldlevel = 20
        -- indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})



-- cursor shape
vim.opt.guicursor = "i:block"

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- 2 space indent for js, ts, html, css
vim.api.nvim_create_autocmd('FileType', {
    pattern  =  { "javascript", "typescript", "javascriptreact", "typescriptreact", "css", "html" },
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.expandtab = true
    end,
})

-- line wrap
vim.opt.wrap = false

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- colour
vim.opt.termguicolors = true

-- vertical column line
--vim.opt.textwidth = 120
--vim.opt.colorcolumn = "+1"

-- disable comment continutation
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        vim.opt.formatoptions:remove({ "o", "r" })
    end
})

-- scrolloff 
vim.opt.scrolloff = 10

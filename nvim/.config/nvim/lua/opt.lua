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

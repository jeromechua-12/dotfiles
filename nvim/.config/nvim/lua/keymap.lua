-- leaderkey
vim.g.mapleader = " "

-- project explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- shift selected lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- 1/2 page down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- 1/2 page up
vim.keymap.set("n", "n", "nzzzv") -- search next
vim.keymap.set("n", "N", "Nzzzv") -- search prev

-- system clipboard
vim.keymap.set("n", "<leader>yy", "\"+y")
vim.keymap.set("v", "<leader>yy", "\"+y")
vim.keymap.set("v", "<leader>pp", "\"+p")
vim.keymap.set("n", "<leader>pp", "\"+p")

-- void registry 
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- escape
-- vim.keymap.set("i", "jk", "<Esc>")
-- vim.keymap.set("v", "jk", "<Esc>")

-- terminal
vim.keymap.set("n", "<leader>tt", ":set splitright<CR>:vert term<CR>i")
vim.keymap.set("n", "<leader>th", ":below term<CR>i")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- built-in undo-tree
vim.keymap.set("n", "<leader>u", function()
    vim.cmd.packadd("nvim.undotree")
    require("undotree").open()
end)

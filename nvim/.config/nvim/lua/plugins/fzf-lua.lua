require('fzf-lua').setup({
    keymap = {
        fzf = {
            true,
            ["ctrl-h"] = "abort",
            ["ctrl-j"] = "down",
            ["ctrl-k"] = "up",
            ["ctrl-l"] = "accept",
        },
    }
})

-- keybindings
local builtin = require('fzf-lua')
vim.keymap.set('n', '<leader>ff', builtin.files, { desc = 'Ffz-lua files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Fzf-lua live grep' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Fzf-lua git files' })

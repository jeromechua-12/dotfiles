require('fzf-lua').setup({
    keymap = {
        fzf = {
            true,
            ["ctrl-h"] = "abort",
            ["ctrl-j"] = "down",
            ["ctrl-k"] = "up",
            ["ctrl-l"] = "accept",
        },
    },
    files = {
        find_opts         = [[-type f \! -path '*/.git/*' \! -path '*/.jj/*' \! -path '*/.venv/*']],
        rg_opts           = [[--color=never --files --no-ignore -g "!.git" -g "!.jj" -g "!.venv"]],
        fd_opts           = [[--color=never --type f --type l --no-ignore --exclude .git --exclude .jj --exclude .venv]],
    },
})

-- keybindings
local builtin = require('fzf-lua')
vim.keymap.set('n', '<leader>ff', builtin.files, { desc = 'Ffz-lua files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Fzf-lua live grep' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Fzf-lua git files' })

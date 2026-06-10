require('vim._core.ui2').enable({
    enable = true,
    msg = {
        target = 'cmd',
        cmd = { height = 0.5 },
        dialog = { height = 0.5},
        msg = { height = 0.5, timeout = 4000 },
        pager = { height = 0.5 },
    },
})

require('keymap')
require('opt')
require('pack')

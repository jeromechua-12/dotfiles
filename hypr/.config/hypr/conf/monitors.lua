------------------
---- MONITORS ----
------------------

hl.monitor({
    output = "DP-2",
    mode = "2560x1440@144",
    position = "0x0",
    scale = 1,
    bitdepth = 8,
})

hl.monitor({
    output = "DP-4",
    mode = "2560x1440@144",
    position = "2560x-565",
    scale = 1,
    transform = 3,
    bitdepth = 8,
})

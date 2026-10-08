-------------------
---- AUTOSTART ----
-------------------

local programs = require("conf.variables").programs

hl.on("hyprland.start", function ()
    hl.exec_cmd(programs.browser, { workspace = "1 silent" })
    hl.exec_cmd(programs.terminal, { workspace = "2 silent" })
    hl.exec_cmd("uwsm app -- wl-paste --type text --watch cliphist store")
    hl.exec_cmd("uwsm app -- wl-paste --type image --watch cliphist store")
    hl.exec_cmd("uwsm app -- playerctld daemon")
    hl.exec_cmd("uwsm app -- solaar --window=hide")  -- logitech
end)

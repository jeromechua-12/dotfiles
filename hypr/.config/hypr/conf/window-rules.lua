----------------------
---- WINDOW RULES ---- 
----------------------

hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland-run window_rule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Browser
hl.window_rule({
    name = "browser-focus",
    match = { class = "firefox" },
    focus_on_activate = true,
})

-- Spotify
hl.window_rule({
    name = "open-spotify",
    match = { class = "spotify" },
    workspace = "9",
    no_initial_focus = true,
})

-- Discord
hl.window_rule({
    name = "open-discord",
    match = { class = "discord" },
    workspace = "9",
    no_initial_focus = true,
})

-- OBS
hl.window_rule({
    name = "open-obs",
    match = { class = "com.obsproject.Studio" },
    workspace = "5",
    focus_on_activate = true,
})

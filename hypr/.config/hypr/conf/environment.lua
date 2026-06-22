-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

local screenshotPath = require("conf.variables").screenshotPath

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- hyprshot directory
hl.env("HYPRSHOT_DIR", screenshotPath)

-- nvidia
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- electron
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- qt6ct themes
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QPA_PLATFORM", "wayland")

-- xdg menu
hl.env("XDG_MENU_PREFIX", "arch-")

-- mpd
hl.env("MPD_HOST", "localhost")

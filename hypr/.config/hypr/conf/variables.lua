-------------------
---- VARIABLES ----
-------------------

local variables = {}

-- screenshot path
local screenshotPath = "Pictures/screenshots/"
variables.screenshotPath = screenshotPath

-- programs
variables.programs = {}
variables.programs.terminal = "kitty"
variables.programs.fileManager = "dolphin"
variables.programs.menu = "rofi -show drun"
variables.programs.browser = "firefox"
variables.programs.screenshotRegion = "hyprshot -m region"
variables.programs.screenshotWindow = "hyprshot -m window"
variables.programs.lockscreen = "hyprlock -q"
variables.programs.colorpicker = "hyprpicker -a -q"

return variables

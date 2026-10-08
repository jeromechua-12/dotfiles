-------------------
---- VARIABLES ----
-------------------

local variables = {}

-- screenshot path
local screenshotPath = "Pictures/screenshots/"
variables.screenshotPath = screenshotPath

-- programs
variables.programs = {}
variables.programs.terminal = "uwsm app -- kitty"
variables.programs.fileManager = "uwsm app -- thunar"
variables.programs.menu = "rofi -show drun -run-command 'uwsm app -- {cmd}'"
variables.programs.browser = "uwsm app -- firefox"
variables.programs.screenshotRegion = "hyprshot -m region"
variables.programs.screenshotWindow = "hyprshot -m window"
variables.programs.lockscreen = "loginctl lock-session"
variables.programs.colorpicker = "hyprpicker -a -q"

return variables

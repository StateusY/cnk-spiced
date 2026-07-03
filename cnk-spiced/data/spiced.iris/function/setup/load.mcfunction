#> spiced.iris:setup/load
#
# Defines scoreboard objectives and sets up storage if it has not already been done
#
# @handles #minecraft:load

# IDE storage definitions for Spyglass
#define storage spiced.iris:data
#define storage spiced.iris:args
#define storage spiced.iris:settings
#define storage spiced.iris:output

# Setup scoreboard and storage
function spiced.iris:setup/scoreboard
execute unless data storage spiced.iris:data is_setup run function spiced.iris:setup/storage

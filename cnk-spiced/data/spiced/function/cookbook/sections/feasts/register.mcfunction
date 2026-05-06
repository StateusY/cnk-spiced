scoreboard players operation $feasts_page spiced.dummy = $global_cookbook_page spiced.dummy

execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_cookbook_page spiced.dummy
data modify storage spiced:temp register.page_name set value "feasts"
data modify storage spiced:temp register.dialog_function set value "spiced:cookbook/sections/feasts/page"

function spiced:cookbook/pages/register

# register internal pages
function #spiced:cookbook/feasts

# register addon pages
function #spiced:addons/cookbook/feasts
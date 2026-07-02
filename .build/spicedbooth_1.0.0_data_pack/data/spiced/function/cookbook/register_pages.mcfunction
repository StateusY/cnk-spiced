scoreboard players set $global_cookbook_page spiced.dummy 1
data modify storage spiced:cookbook pages set value {}
data modify storage spiced:cookbook page_lookup set value {}
data remove storage spiced:temp key_map
data remove storage spiced:temp register
function spiced:cookbook/sections/front/register
function #spiced:cookbook/demo
function spiced:cookbook/pages/back/register

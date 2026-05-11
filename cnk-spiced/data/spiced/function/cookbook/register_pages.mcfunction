scoreboard players set $global_cookbook_page spiced.dummy 1
data modify storage spiced:cookbook pages set value {}
data modify storage spiced:cookbook page_lookup set value {}
data remove storage spiced:temp key_map

#clear storage
data remove storage spiced:temp register

# register pages
function spiced:cookbook/sections/front/register
#function #spiced:cookbook/front
function #spiced:cookbook/demo

# register the back page
#function spiced:cookbook/pages/back/register
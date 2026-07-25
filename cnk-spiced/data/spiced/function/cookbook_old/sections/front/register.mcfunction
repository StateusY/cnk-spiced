#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players set $front_page spiced.dummy 1

execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_cookbook_page spiced.dummy
data modify storage spiced:temp register.page_name set value "front"
data modify storage spiced:temp register.dialog_function set value "spiced:cookbook/sections/front/page"

function spiced:cookbook/pages/page_gen/register

# register internal pages
function #spiced:cookbook/front

# register addon pages
function #spiced:addons/cookbook/front
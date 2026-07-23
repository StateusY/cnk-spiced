#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players reset @s spiced.idle_time
execute if entity @s[tag=spiced.mixing] run return fail

# recount items in case of desync shenanigans
function spiced:mixing_bowl/recount_items

execute if score @s spiced.item_count matches 1.. run return run function spiced:mixing_bowl/hit/remove_last

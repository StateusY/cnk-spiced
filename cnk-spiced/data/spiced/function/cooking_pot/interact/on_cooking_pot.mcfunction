#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

# dont update if cooking
execute if score @s spiced.cook_time matches 1.. run return fail
execute if score @s spiced.cook_cooldown matches 1.. run return fail

scoreboard players reset @s spiced.idle_time
data modify entity @s data.spiced.last_interact_uuid set from storage gu:main out
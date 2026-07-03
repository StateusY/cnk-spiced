#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if score $cooking_pot_lock spiced.dummy matches 1 run return fail
scoreboard players set $cooking_pot_lock spiced.dummy 1

execute if score @s spiced.cook_time matches 1 run function spiced:cooking_pot/effects/start_cooking
execute if score @s spiced.cook_time matches 100.. run return 1

# Still cooking, don't unlock
scoreboard players add @s spiced.cook_time 1
return fail
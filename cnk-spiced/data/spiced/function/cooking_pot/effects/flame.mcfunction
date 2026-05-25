#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if entity @s[tag=spiced.stove] run return fail
execute if entity @s[tag=spiced.witch_cauldron] run return run particle minecraft:copper_fire_flame ~ ~-0.35 ~ 0.18 0.05 0.18 0 1
particle minecraft:flame ~ ~-0.35 ~ 0.18 0.05 0.18 0 1
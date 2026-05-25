#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute store result score $block_rotation spiced.dummy run data get entity @s Rotation[0]
execute if score $block_rotation spiced.dummy matches -180..-135 run data modify storage spiced:temp cooking_pot.stove.motion set value [0.1, 0.07, 0.0]
execute if score $block_rotation spiced.dummy matches -135..-45 run data modify storage spiced:temp cooking_pot.stove.motion set value [0.1, 0.07, 0.0]
execute if score $block_rotation spiced.dummy matches -45..45 run data modify storage spiced:temp cooking_pot.stove.motion set value [0.0, 0.07, 0.1]
execute if score $block_rotation spiced.dummy matches 45..135 run data modify storage spiced:temp cooking_pot.stove.motion set value [-0.1, 0.07, 0.0]
execute if score $block_rotation spiced.dummy matches 135..180 run data modify storage spiced:temp cooking_pot.stove.motion set value [0.0, 0.07, -0.1]

execute positioned ~ ~0.3 ~ as @e[type=minecraft:item,dx=0] run data modify entity @s Motion set from storage spiced:temp cooking_pot.stove.motion
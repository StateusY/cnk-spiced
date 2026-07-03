#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

function gu:convert with entity @s
execute as @n[type=minecraft:item_display,tag=spiced.cooking_pot,distance=..0.1] run function spiced:cooking_pot/interact/on_cooking_pot
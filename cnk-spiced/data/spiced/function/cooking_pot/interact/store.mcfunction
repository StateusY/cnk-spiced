#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

function spiced:gu/convert with entity @s
data modify entity @n[type=minecraft:item_display,tag=spiced.cooking_pot,distance=..0.1] data.spiced.last_interact_uuid set from storage gu:main out
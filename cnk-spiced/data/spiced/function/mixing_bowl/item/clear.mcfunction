#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

swing @p[tag=spiced.interact_mixing_bowl,distance=..20,limit=1] mainhand
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.mixing_bowl_item] run function spiced:mixing_bowl/item/remove
scoreboard players set @s spiced.item_count 0
#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players reset @s spiced.idle_time
execute unless entity @s[tag=spiced.mixing] on passengers if entity @s[type=minecraft:item_display,tag=spiced.mixing_bowl_item] on vehicle run return run function spiced:mixing_bowl/hit/remove_last
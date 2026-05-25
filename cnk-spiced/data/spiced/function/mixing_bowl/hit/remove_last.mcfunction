#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if score @s spiced.item_count matches 4 on passengers if entity @s[tag=spiced.mixing_bowl_4] at @s run function spiced:mixing_bowl/item/remove
execute if score @s spiced.item_count matches 3 on passengers if entity @s[tag=spiced.mixing_bowl_3] at @s run function spiced:mixing_bowl/item/remove
execute if score @s spiced.item_count matches 2 on passengers if entity @s[tag=spiced.mixing_bowl_2] at @s run function spiced:mixing_bowl/item/remove
execute if score @s spiced.item_count matches 1 on passengers if entity @s[tag=spiced.mixing_bowl_1] at @s run function spiced:mixing_bowl/item/remove

scoreboard players remove @s spiced.item_count 1
#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players reset @s spiced.idle_time
execute if entity @s[tag=spiced.mixing] run return fail

execute if entity @p[tag=spiced.interact_mixing_bowl,predicate=spiced:sneaking,distance=..20] if score @s spiced.item_count matches 1.. run return run function spiced:mixing_bowl/item/clear
execute unless items entity @p[tag=spiced.interact_mixing_bowl,distance=..20] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{spiced:{ingredient:{}}}] if score @s spiced.item_count matches 1.. run return run function spiced:mixing_bowl/mix/main
execute if items entity @p[tag=spiced.interact_mixing_bowl,distance=..20] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{spiced:{ingredient:{}}}] run return run function spiced:mixing_bowl/item/main

execute unless items entity @p[tag=spiced.interact_mixing_bowl,distance=..20] weapon.mainhand minecraft:glass_bottle if score @s spiced.item_count matches 1.. run return run function spiced:mixing_bowl/mix/main
execute if items entity @p[tag=spiced.interact_mixing_bowl,distance=..20] weapon.mainhand minecraft:glass_bottle run return run function spiced:mixing_bowl/item/main
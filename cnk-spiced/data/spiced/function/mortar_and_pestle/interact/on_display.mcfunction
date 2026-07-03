scoreboard players reset @s spiced.idle_time
execute if entity @s[tag=spiced.mashing] run return fail

execute if entity @p[tag=spiced.interact_mortar_and_pestle,predicate=spiced:sneaking,distance=..20] if score @s spiced.item_count matches 1.. run return run function spiced:mortar_and_pestle/item/clear
execute if entity @p[tag=spiced.interact_mortar_and_pestle,predicate=spiced:sneaking,distance=..20] if data entity @s item.components."minecraft:custom_data".spiced.last_recipe at @s run return run function spiced:mortar_and_pestle/repeat/main
execute unless items entity @p[tag=spiced.interact_mortar_and_pestle,distance=..20] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{spiced:{ingredient:{}}}] if score @s spiced.item_count matches 1.. run return run function spiced:mortar_and_pestle/mash/main
execute if items entity @p[tag=spiced.interact_mortar_and_pestle,distance=..20] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{spiced:{ingredient:{}}}] run return run function spiced:mortar_and_pestle/item/main
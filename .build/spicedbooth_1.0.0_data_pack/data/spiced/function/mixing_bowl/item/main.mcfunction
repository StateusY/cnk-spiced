execute if score @s spiced.item_count matches 4.. run return run function spiced:mixing_bowl/mix/main
swing @p[tag=spiced.interact_mixing_bowl, distance=..20] mainhand
scoreboard players set $hand_place spiced.dummy 1
scoreboard players operation $global spiced.item_count = @s spiced.item_count
execute summon minecraft:item_display at @s run function spiced:mixing_bowl/item/place
scoreboard players operation @s spiced.item_count = $global spiced.item_count

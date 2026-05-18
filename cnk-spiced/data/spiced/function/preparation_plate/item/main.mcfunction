execute if score @s spiced.item_count matches 4.. run return run function spiced:preparation_plate/prepare/main

scoreboard players set $hand_place spiced.dummy 1

scoreboard players operation $global spiced.item_count = @s spiced.item_count
execute summon minecraft:item_display at @s run function spiced:preparation_plate/item/place
scoreboard players operation @s spiced.item_count = $global spiced.item_count
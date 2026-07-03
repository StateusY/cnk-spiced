execute if score @s spiced.item_count matches 3.. run return run function spiced:mortar_and_pestle/mash/main

scoreboard players set $hand_place spiced.dummy 1

scoreboard players operation $global spiced.item_count = @s spiced.item_count
execute summon minecraft:item_display at @s run function spiced:mortar_and_pestle/item/place
scoreboard players operation @s spiced.item_count = $global spiced.item_count
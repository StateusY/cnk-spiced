execute if score @s cnk.item_count matches 4.. run return run function spiced:preparation_plate/prepare/main

scoreboard players set $hand_place cnk.dummy 1

scoreboard players operation $global cnk.item_count = @s cnk.item_count
execute summon minecraft:item_display at @s run function spiced:preparation_plate/item/place
scoreboard players operation @s cnk.item_count = $global cnk.item_count
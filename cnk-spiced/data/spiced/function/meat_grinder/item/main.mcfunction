execute if score @s cnk.item_count matches 1.. run return run function spiced:meat_grinder/grind/main

scoreboard players set $hand_place cnk.dummy 1

scoreboard players operation $global cnk.item_count = @s cnk.item_count
execute summon minecraft:item_display at @s run function spiced:meat_grinder/item/place
scoreboard players operation @s cnk.item_count = $global cnk.item_count
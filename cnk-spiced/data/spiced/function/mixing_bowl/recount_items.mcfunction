scoreboard players set $global spiced.item_count 0
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.mixing_bowl_item] run scoreboard players add $global spiced.item_count 1
scoreboard players operation @s spiced.item_count = $global spiced.item_count
# increase idle time, clear mortar and pestle if idle for 2400 ticks (2 minutes)
execute if score @s spiced.item_count matches 1.. run scoreboard players add @s spiced.idle_time 1
execute if score @s spiced.idle_time matches 2400.. on passengers if entity @s[type=minecraft:item_display,tag=spiced.mortar_and_pestle_item] run kill @s

# miiiiiix
execute if entity @s[tag=spiced.mashing] run function spiced:mortar_and_pestle/mash/process
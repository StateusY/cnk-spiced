data modify storage spiced:temp mortar_and_pestle.Items set value []
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.mortar_and_pestle_item] run function spiced:mortar_and_pestle/mash/item_check
execute store result score $mortar_and_pestle_item_count spiced.dummy run data get storage spiced:temp mortar_and_pestle.Items
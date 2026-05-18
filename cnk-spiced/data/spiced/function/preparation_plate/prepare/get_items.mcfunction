data modify storage spiced:temp preparation_plate.Items set value []
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.preparation_plate_item] run function spiced:preparation_plate/prepare/item_check
execute store result score $preparation_plate_item_count spiced.dummy run data get storage spiced:temp preparation_plate.Items
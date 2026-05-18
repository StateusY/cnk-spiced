data modify storage spiced:temp mixing_bowl.Items set value []
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.mixing_bowl_item] run function spiced:mixing_bowl/mix/item_check
execute store result score $mixing_bowl_item_count spiced.dummy run data get storage spiced:temp mixing_bowl.Items
data modify storage spiced:temp meat_grinder.Items set value []
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.meat_grinder_item] run function spiced:meat_grinder/grind/item_check
execute store result score $meat_grinder_item_count spiced.dummy run data get storage spiced:temp meat_grinder.Items
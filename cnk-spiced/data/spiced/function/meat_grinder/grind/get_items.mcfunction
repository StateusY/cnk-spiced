data modify storage cnk:temp meat_grinder.Items set value []
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.meat_grinder_item] run function spiced:meat_grinder/grind/item_check
execute store result score $meat_grinder_item_count cnk.dummy run data get storage cnk:temp meat_grinder.Items
execute if score @s cnk.item_count matches 4 on passengers if entity @s[tag=spiced.meat_grinder_4] at @s run function spiced:meat_grinder/item/remove
execute if score @s cnk.item_count matches 3 on passengers if entity @s[tag=spiced.meat_grinder_3] at @s run function spiced:meat_grinder/item/remove
execute if score @s cnk.item_count matches 2 on passengers if entity @s[tag=spiced.meat_grinder_2] at @s run function spiced:meat_grinder/item/remove
execute if score @s cnk.item_count matches 1 on passengers if entity @s[tag=spiced.meat_grinder_1] at @s run function spiced:meat_grinder/item/remove

scoreboard players remove @s cnk.item_count 1
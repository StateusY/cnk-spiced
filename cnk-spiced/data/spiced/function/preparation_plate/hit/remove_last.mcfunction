execute if score @s cnk.item_count matches 4 on passengers if entity @s[tag=spiced.preparation_plate_4] at @s run function spiced:preparation_plate/item/remove
execute if score @s cnk.item_count matches 3 on passengers if entity @s[tag=spiced.preparation_plate_3] at @s run function spiced:preparation_plate/item/remove
execute if score @s cnk.item_count matches 2 on passengers if entity @s[tag=spiced.preparation_plate_2] at @s run function spiced:preparation_plate/item/remove
execute if score @s cnk.item_count matches 1 on passengers if entity @s[tag=spiced.preparation_plate_1] at @s run function spiced:preparation_plate/item/remove

scoreboard players remove @s cnk.item_count 1
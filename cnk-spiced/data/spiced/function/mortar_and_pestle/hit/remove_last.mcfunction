execute if score @s cnk.item_count matches 4 on passengers if entity @s[tag=spiced.mortar_and_pestle_4] at @s run function spiced:mortar_and_pestle/item/remove
execute if score @s cnk.item_count matches 3 on passengers if entity @s[tag=spiced.mortar_and_pestle_3] at @s run function spiced:mortar_and_pestle/item/remove
execute if score @s cnk.item_count matches 2 on passengers if entity @s[tag=spiced.mortar_and_pestle_2] at @s run function spiced:mortar_and_pestle/item/remove
execute if score @s cnk.item_count matches 1 on passengers if entity @s[tag=spiced.mortar_and_pestle_1] at @s run function spiced:mortar_and_pestle/item/remove

scoreboard players remove @s cnk.item_count 1
scoreboard players add @s spiced.prepare_time 1

execute if score @s spiced.prepare_time matches 1 run playsound spiced:block.preparation_plate.stir block @a ~ ~ ~ 1 0.8
execute on passengers if entity @s[type=minecraft:item_display] run function spiced:preparation_plate/prepare/rotation

execute if score @s spiced.prepare_time matches 10.. run tag @s remove spiced.preparing
execute if score @s spiced.prepare_time matches 10.. run function spiced:preparation_plate/prepare/finish with entity @s item.components."minecraft:custom_data".spiced
execute if score @s spiced.prepare_time matches 10.. run scoreboard players set @s spiced.prepare_time 0
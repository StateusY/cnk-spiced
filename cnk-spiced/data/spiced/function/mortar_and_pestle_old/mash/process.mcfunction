scoreboard players add @s spiced.mash_time 1

execute if score @s spiced.mash_time matches 1 run playsound spiced:block.mortar_and_pestle.stir block @a ~ ~ ~ 1 0.8
execute on passengers if entity @s[type=minecraft:item_display] run function spiced:mortar_and_pestle/mash/rotation

execute if score @s spiced.mash_time matches 10.. run tag @s remove spiced.mashing
execute if score @s spiced.mash_time matches 10.. run function spiced:mortar_and_pestle/mash/finish with entity @s item.components."minecraft:custom_data".spiced
execute if score @s spiced.mash_time matches 10.. run scoreboard players set @s spiced.mash_time 0
scoreboard players add @s spiced.mix_time 1

execute if score @s spiced.mix_time matches 1 run playsound spiced:block.mixing_bowl.stir block @a ~ ~ ~ 1 0.8
execute on passengers if entity @s[type=minecraft:item_display] run function spiced:mixing_bowl/mix/rotation

execute if score @s spiced.mix_time matches 10.. run tag @s remove spiced.mixing
execute if score @s spiced.mix_time matches 10.. run function spiced:mixing_bowl/mix/finish with entity @s item.components."minecraft:custom_data".spiced
execute if score @s spiced.mix_time matches 10.. run scoreboard players set @s spiced.mix_time 0
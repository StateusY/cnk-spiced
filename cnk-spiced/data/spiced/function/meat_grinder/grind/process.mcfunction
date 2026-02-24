scoreboard players add @s spiced.grind_time 1

execute if score @s spiced.grind_time matches 1 run playsound spiced:block.meat_grinder.stir block @a ~ ~ ~ 1 0.8
execute on passengers if entity @s[type=minecraft:item_display] run function spiced:meat_grinder/grind/rotation

execute if score @s spiced.grind_time matches 10.. run tag @s remove spiced.grinding
execute if score @s spiced.grind_time matches 10.. run function spiced:meat_grinder/grind/finish with entity @s item.components."minecraft:custom_data".spiced
execute if score @s spiced.grind_time matches 10.. run scoreboard players set @s spiced.grind_time 0
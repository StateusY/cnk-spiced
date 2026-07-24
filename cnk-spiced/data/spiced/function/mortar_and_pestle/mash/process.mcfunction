scoreboard players add @s spiced.mash_time 1

execute if score @s spiced.mash_time matches 1 run playsound cnk:block.mixing_bowl.stir block @a[tag=summit.in_booth.spiced,distance=..7] ~ ~ ~ 1 0.8

scoreboard players operation $mash_time spiced.dummy = @s spiced.mash_time
execute on passengers if entity @s[type=minecraft:item_display] at @s rotated as @s run function spiced:mortar_and_pestle/mash/rotation

execute if score @s spiced.mash_time matches 20.. run tag @s remove spiced.mashing
execute if score @s spiced.mash_time matches 20.. run function spiced:mortar_and_pestle/mash/finish with entity @s item.components."minecraft:custom_data".spiced
execute if score @s spiced.mash_time matches 20.. run scoreboard players set @s spiced.mash_time 0
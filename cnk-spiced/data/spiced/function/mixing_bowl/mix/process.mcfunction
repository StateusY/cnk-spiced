#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players add @s spiced.mix_time 1

execute if score @s spiced.mix_time matches 1 run playsound spiced:block.mixing_bowl.stir block @a[tag=summit.in_booth.spiced,distance=..7] ~ ~ ~ 1 0.8

scoreboard players operation $mix_time spiced.dummy = @s spiced.mix_time
execute on passengers if entity @s[type=minecraft:item_display] at @s rotated as @s run function spiced:mixing_bowl/mix/rotation

execute if score @s spiced.mix_time matches 20.. run tag @s remove spiced.mixing
execute if score @s spiced.mix_time matches 20.. run function spiced:mixing_bowl/mix/finish with entity @s item.components."minecraft:custom_data".spiced
execute if score @s spiced.mix_time matches 20.. run scoreboard players set @s spiced.mix_time 0
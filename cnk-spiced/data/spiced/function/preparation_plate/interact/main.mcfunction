advancement revoke @s only spiced:interact_preparation_plate

scoreboard players set $interact_preparation_plate_check cnk.dummy 0

tag @s add spiced.interact_preparation_plate
execute as @e[type=minecraft:interaction,tag=spiced.preparation_plate_interaction,distance=..20] run function spiced:preparation_plate/interact/check
tag @s remove spiced.interact_preparation_plate
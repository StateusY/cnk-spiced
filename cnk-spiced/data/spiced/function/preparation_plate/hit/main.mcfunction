advancement revoke @s only spiced:hit_preparation_plate

scoreboard players set $hit_preparation_plate_check cnk.dummy 0

tag @s add spiced.hit_preparation_plate
execute as @e[type=minecraft:interaction,tag=spiced.preparation_plate_interaction,distance=..20] run function spiced:preparation_plate/hit/check
tag @s remove spiced.hit_preparation_plate
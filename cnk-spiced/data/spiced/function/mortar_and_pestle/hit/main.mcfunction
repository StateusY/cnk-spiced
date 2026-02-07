advancement revoke @s only spiced:hit_mortar_and_pestle

scoreboard players set $hit_mortar_and_pestle_check cnk.dummy 0

tag @s add spiced.hit_mortar_and_pestle
execute as @e[type=minecraft:interaction,tag=spiced.mortar_and_pestle_interaction,distance=..20] run function spiced:mortar_and_pestle/hit/check
tag @s remove spiced.hit_mortar_and_pestle
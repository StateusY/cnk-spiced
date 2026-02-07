advancement revoke @s only spiced:interact_mortar_and_pestle

scoreboard players set $interact_mortar_and_pestle_check cnk.dummy 0

tag @s add spiced.interact_mortar_and_pestle
execute as @e[type=minecraft:interaction,tag=spiced.mortar_and_pestle_interaction,distance=..20] run function spiced:mortar_and_pestle/interact/check
tag @s remove spiced.interact_mortar_and_pestle
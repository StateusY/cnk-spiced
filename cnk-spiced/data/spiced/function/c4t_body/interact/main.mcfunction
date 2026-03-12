advancement revoke @s only spiced:interact_c4t_body

scoreboard players set $interact_hollow_vessel_check cnk.dummy 0

tag @s add spiced.interact_c4t_body
execute as @e[type=minecraft:interaction,tag=spiced.c4t_body_interaction,distance=..20] run function spiced:c4t_body/interact/check
tag @s remove spiced.interact_c4t_body
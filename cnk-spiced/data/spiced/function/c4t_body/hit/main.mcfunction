advancement revoke @s only spiced:hit_c4t_body

scoreboard players set $hit_c4t_body_check cnk.dummy 0

tag @s add spiced.hit_c4t_body
execute as @e[type=minecraft:interaction,tag=spiced.c4t_body_interaction,distance=..20] run function spiced:c4t_body/hit/check
tag @s remove spiced.hit_c4t_body
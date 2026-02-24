advancement revoke @s only spiced:hit_meat_grinder

scoreboard players set $hit_meat_grinder_check cnk.dummy 0

tag @s add spiced.hit_meat_grinder
execute as @e[type=minecraft:interaction,tag=spiced.meat_grinder_interaction,distance=..20] run function spiced:meat_grinder/hit/check
tag @s remove spiced.hit_meat_grinder
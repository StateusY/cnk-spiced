advancement revoke @s only spiced:hit_mixing_bowl

scoreboard players set $hit_mixing_bowl_check spiced.dummy 0

tag @s add spiced.hit_mixing_bowl
execute as @e[type=minecraft:interaction,tag=spiced.mixing_bowl_interaction,distance=..20] run function spiced:mixing_bowl/hit/check
tag @s remove spiced.hit_mixing_bowl
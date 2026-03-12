advancement revoke @s only spiced:hit_the_smiling_man

scoreboard players set $hit_the_smiling_man_check cnk.dummy 0

tag @s add spiced.hit_the_smiling_man
execute as @e[type=minecraft:interaction,tag=spiced.the_smiling_man_interaction,distance=..20] run function spiced:the_smiling_man/hit/check
tag @s remove spiced.hit_the_smiling_man
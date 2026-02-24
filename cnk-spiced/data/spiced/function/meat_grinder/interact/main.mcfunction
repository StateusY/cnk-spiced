advancement revoke @s only spiced:interact_meat_grinder

scoreboard players set $interact_meat_grinder_check cnk.dummy 0

tag @s add spiced.interact_meat_grinder
execute as @e[type=minecraft:interaction,tag=spiced.meat_grinder_interaction,distance=..20] run function spiced:meat_grinder/interact/check
tag @s remove spiced.interact_meat_grinder
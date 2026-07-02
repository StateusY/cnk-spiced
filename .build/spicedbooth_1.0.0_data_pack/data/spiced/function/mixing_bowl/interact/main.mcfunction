advancement revoke @s only spiced:interact_mixing_bowl
scoreboard players set $interact_mixing_bowl_check spiced.dummy 0
tag @s add spiced.interact_mixing_bowl
execute as @e[type=minecraft:interaction, tag=spiced.mixing_bowl_interaction, nbt={interaction: {}}, distance=..20] run function spiced:mixing_bowl/interact/on_interaction
tag @s remove spiced.interact_mixing_bowl

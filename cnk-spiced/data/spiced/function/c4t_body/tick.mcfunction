execute if score @s cnk.hit_count matches 1.. run function spiced:c4t_body/break/check
execute unless block ~ ~ ~ #cnk:air run function spiced:c4t_body/break/break
execute if block ~ ~-1 ~ #cnk:air run function spiced:c4t_body/break/break

execute if entity @s[tag=cnk.hollow_vessel_filled] run function spiced:c4t_body/create/timer
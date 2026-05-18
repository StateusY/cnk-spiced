execute if entity @s[tag=spiced.mixing] run function spiced:mixing_bowl/mix/process

execute if entity @s[tag=spiced.in_partial] run return run function spiced:mixing_bowl/in_partial
execute unless block ~ ~ ~ #spiced:air run return run function spiced:mixing_bowl/break/break
execute if block ~ ~-1 ~ #spiced:air run return run function spiced:mixing_bowl/break/break
execute if score @s spiced.hit_count matches 1.. run return run function spiced:mixing_bowl/break/check
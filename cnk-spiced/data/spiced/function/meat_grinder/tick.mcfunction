execute if entity @s[tag=spiced.grinding] run function spiced:meat_grinder/grind/process

execute unless block ~ ~ ~ minecraft:barrier run return run function spiced:meat_grinder/break/break
execute if block ~ ~-1 ~ #cnk:air run return run function spiced:meat_grinder/break/break
execute if score @s cnk.hit_count matches 1.. run return run function spiced:meat_grinder/break/check
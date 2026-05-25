execute if entity @s[tag=spiced.mixing] run function spiced:mixing_bowl/mix/process

execute if score @s spiced.hit_count matches 1.. run return run function spiced:mixing_bowl/break/check
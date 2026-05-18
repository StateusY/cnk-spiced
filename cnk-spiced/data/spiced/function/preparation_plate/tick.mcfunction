execute if entity @s[tag=spiced.preparing] run function spiced:preparation_plate/prepare/process

execute unless block ~ ~ ~ #spiced:air run return run function spiced:preparation_plate/break/break
execute if block ~ ~-1 ~ #spiced:air run return run function spiced:preparation_plate/break/break
execute if score @s spiced.hit_count matches 1.. run return run function spiced:preparation_plate/break/check
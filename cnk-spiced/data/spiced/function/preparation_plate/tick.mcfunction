execute if entity @s[tag=spiced.preparing] run function spiced:preparation_plate/prepare/process

execute unless block ~ ~ ~ #cnk:air run return run function spiced:preparation_plate/break/break
execute if block ~ ~-1 ~ #cnk:air run return run function spiced:preparation_plate/break/break
execute if score @s cnk.hit_count matches 1.. run return run function spiced:preparation_plate/break/check
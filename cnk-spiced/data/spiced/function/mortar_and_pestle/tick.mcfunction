execute if entity @s[tag=spiced.mashing] run function spiced:mortar_and_pestle/mash/process

execute unless block ~ ~ ~ #spiced:air run return run function spiced:mortar_and_pestle/break/break
execute if block ~ ~-1 ~ #spiced:air run return run function spiced:mortar_and_pestle/break/break
execute if score @s spiced.hit_count matches 1.. run return run function spiced:mortar_and_pestle/break/check
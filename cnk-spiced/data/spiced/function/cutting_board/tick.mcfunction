execute if entity @s[tag=spiced.in_partial] run return run function spiced:cutting_board/in_partial
# execute unless block ~ ~ ~ #spiced:air run return run function spiced:cutting_board/break/break
# execute if block ~ ~-1 ~ #spiced:air run return run function spiced:cutting_board/break/break
# execute if score @s spiced.hit_count matches 1.. run return run function spiced:cutting_board/break/check
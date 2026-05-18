execute if score @s spiced.hit_timer matches 60 run scoreboard players reset @s spiced.hit_count
execute if score @s spiced.hit_timer matches 60 run return run scoreboard players reset @s spiced.hit_timer
execute if score @s spiced.hit_count matches 1..2 run return run scoreboard players add @s spiced.hit_timer 1

function spiced:cutting_board/break/break
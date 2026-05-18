execute if score @s spiced.hit_timer matches 60 run scoreboard players set @s spiced.hit_count 0
execute if score @s spiced.hit_timer matches 60 run return run scoreboard players set @s spiced.hit_timer 0
execute if score @s spiced.hit_count matches 1..2 run return run scoreboard players add @s spiced.hit_timer 1

function spiced:the_smiling_man/break/break
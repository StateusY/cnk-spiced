execute if score $interact_cutting_board_check spiced.dummy matches 1 run return fail

execute on target if entity @s[tag=spiced.interact_cutting_board] run scoreboard players set $interact_cutting_board_check spiced.dummy 1
execute if score $interact_cutting_board_check spiced.dummy matches 1 run function spiced:cutting_board/interact/found
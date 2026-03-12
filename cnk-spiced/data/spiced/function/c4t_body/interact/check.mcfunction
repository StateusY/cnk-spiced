execute if score $interact_c4t_body_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=spiced.interact_c4t_body] run scoreboard players set $interact_c4t_body_check cnk.dummy 1
execute if score $interact_c4t_body_check cnk.dummy matches 1 run function spiced:c4t_body/interact/found
execute if score $interact_meat_grinder_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=spiced.interact_meat_grinder] run scoreboard players set $interact_meat_grinder_check cnk.dummy 1
execute if score $interact_meat_grinder_check cnk.dummy matches 1 run function spiced:meat_grinder/interact/found
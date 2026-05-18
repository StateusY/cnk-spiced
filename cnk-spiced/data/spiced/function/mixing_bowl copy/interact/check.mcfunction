execute if score $interact_mixing_bowl_check spiced.dummy matches 1 run return fail

execute on target if entity @s[tag=spiced.interact_mixing_bowl] run scoreboard players set $interact_mixing_bowl_check spiced.dummy 1
execute if score $interact_mixing_bowl_check spiced.dummy matches 1 run function spiced:mixing_bowl/interact/found
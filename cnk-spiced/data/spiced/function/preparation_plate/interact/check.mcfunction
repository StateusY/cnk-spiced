execute if score $interact_preparation_plate_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=spiced.interact_preparation_plate] run scoreboard players set $interact_preparation_plate_check cnk.dummy 1
execute if score $interact_preparation_plate_check cnk.dummy matches 1 run function spiced:preparation_plate/interact/found
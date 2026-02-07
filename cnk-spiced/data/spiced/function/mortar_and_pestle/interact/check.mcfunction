execute if score $interact_mortar_and_pestle_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=spiced.interact_mortar_and_pestle] run scoreboard players set $interact_mortar_and_pestle_check cnk.dummy 1
execute if score $interact_mortar_and_pestle_check cnk.dummy matches 1 run function spiced:mortar_and_pestle/interact/found
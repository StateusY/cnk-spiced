#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players reset @s spiced.idle_time

execute if items entity @p[tag=spiced.interact_cutting_board,distance=..20,limit=1] weapon.mainhand *[minecraft:custom_data~{cnk:{"id":"iron_knife"}}] on passengers if entity @s[type=minecraft:item_display,tag=spiced.cutting_board_item] at @s run return run function spiced:cutting_board/cut/main
execute if items entity @p[tag=spiced.interact_cutting_board,distance=..20,limit=1] weapon.mainhand *[minecraft:custom_data~{cnk:{"id":"iron_knife"}}] if items entity @p[tag=spiced.interact_cutting_board,distance=..20,limit=1] weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{spiced:{ingredient:{}}}] run return run function spiced:cutting_board/item/offhand
execute if items entity @p[tag=spiced.interact_cutting_board,distance=..20,limit=1] weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{spiced:{ingredient:{}}}] run return run function spiced:cutting_board/item/main
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.cutting_board_item] at @s run function spiced:cutting_board/item/remove
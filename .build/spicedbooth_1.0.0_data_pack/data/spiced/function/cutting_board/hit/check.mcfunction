execute if score $hit_cutting_board_check spiced.dummy matches 1 run return fail
execute on attacker if entity @s[tag=spiced.hit_cutting_board] run scoreboard players set $hit_cutting_board_check spiced.dummy 1
execute if score $hit_cutting_board_check spiced.dummy matches 1 run data remove entity @s attack
execute if score $hit_cutting_board_check spiced.dummy matches 1 on vehicle on passengers if entity @s[type=minecraft:item_display, tag=spiced.cutting_board_item] at @s run return run function spiced:cutting_board/item/remove
execute if score $hit_cutting_board_check spiced.dummy matches 1 on vehicle at @s run playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 1 2

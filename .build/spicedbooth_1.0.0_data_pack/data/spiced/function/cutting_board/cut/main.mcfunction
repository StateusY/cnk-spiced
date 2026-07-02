scoreboard players set $cut_check spiced.dummy 0
data modify storage spiced:temp cutting_board.item set from entity @s item
execute if data storage spiced:temp cutting_board.item.components."minecraft:custom_data" run data remove storage spiced:temp cutting_board.item.id
function #spiced:recipes/cutting_board
execute if score $cut_check spiced.dummy matches 0 run function spiced:cutting_board/item/remove
execute if score $cut_check spiced.dummy matches 1 run swing @p[tag=spiced.interact_cutting_board, distance=..20] mainhand

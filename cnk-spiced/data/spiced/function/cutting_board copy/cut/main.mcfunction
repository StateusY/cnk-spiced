scoreboard players set $cut_check spiced.dummy 0
data modify storage spiced:temp cutting_board.item set from entity @s item

# fathoms compat
execute if data storage spiced:temp cutting_board.item.components."minecraft:custom_data"{fathoms:{id:"cod"}} run data modify storage spiced:temp cutting_board.item.id set value "minecraft:cod"
execute if data storage spiced:temp cutting_board.item.components."minecraft:custom_data"{fathoms:{id:"cod"}} run data remove storage spiced:temp cutting_board.item.components."minecraft:custom_data"
execute if data storage spiced:temp cutting_board.item.components."minecraft:custom_data"{fathoms:{id:"salmon"}} run data modify storage spiced:temp cutting_board.item.id set value "minecraft:salmon"
execute if data storage spiced:temp cutting_board.item.components."minecraft:custom_data"{fathoms:{id:"salmon"}} run data remove storage spiced:temp cutting_board.item.components."minecraft:custom_data"

execute if data storage spiced:temp cutting_board.item.components."minecraft:custom_data" run data remove storage spiced:temp cutting_board.item.id

function #spiced:recipes/cutting_board

execute if score $cut_check spiced.dummy matches 0 run function spiced:cutting_board/item/remove
execute if score $cut_check spiced.dummy matches 1 as @p[tag=spiced.interact_cutting_board,distance=..20] unless entity @s[gamemode=creative] run function spiced:cutting_board/cut/durability/handle
execute if score $cut_check spiced.dummy matches 1 run swing @p[tag=spiced.interact_cutting_board,distance=..20] mainhand
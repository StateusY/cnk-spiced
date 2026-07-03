data modify storage spiced:temp cutting_board.loot_table set value "spiced:food/sliced_celery"
execute as @p[tag=spiced.interact_cutting_board,distance=..20] at @s run function spiced:cutting_board/recipes/give_result with storage spiced:temp cutting_board

function spiced:cutting_board/cut/finish
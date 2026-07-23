scoreboard players reset @s spiced.idle_time
execute if entity @s[tag=spiced.msahing] run return fail

# recount items in case of desync shenanigans
function spiced:mortar_and_pestle/recount_items

execute if score @s spiced.item_count matches 1.. run return run function spiced:mortar_and_pestle/hit/remove_last
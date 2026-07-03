data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"water_bottle"}}}}}].Slot
execute if data storage spiced:temp cooking_pot.slot run function spiced:recipes/remove with storage spiced:temp cooking_pot
function spiced:cooking_pot/recipes/remove_generic/meat
loot spawn ~ ~0.25 ~ loot spiced:other/glass_bottle
loot spawn ~ ~0.25 ~ loot spiced:food/stock
function spiced:cooking_pot/effects/finish_cooking

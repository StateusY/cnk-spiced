data remove storage spiced:temp cooking_pot.slot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cooking_oil"}}}}}].Slot
execute if data storage spiced:temp cooking_pot.slot run function spiced:recipes/remove with storage spiced:temp cooking_pot
execute if data storage spiced:temp cooking_pot.slot run loot spawn ~ ~0.25 ~ loot spiced:other/glass_bottle
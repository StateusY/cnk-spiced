data remove storage spiced:temp cooking_pot.slot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:milk_bucket"}].Slot
execute if data storage spiced:temp cooking_pot.slot run function spiced:recipes/remove with storage spiced:temp cooking_pot
execute if data storage spiced:temp cooking_pot.slot run loot spawn ~ ~0.25 ~ loot spiced:other/bucket

data remove storage spiced:temp cooking_pot.slot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"milk_bottle"}}}}}].Slot
execute if data storage spiced:temp cooking_pot.slot run function spiced:recipes/remove with storage spiced:temp cooking_pot
execute if data storage spiced:temp cooking_pot.slot run loot spawn ~ ~0.25 ~ loot spiced:other/glass_bottle

data remove storage spiced:temp cooking_pot.slot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{pail:{liquid:"milk"}}}}}].Slot
execute if data storage spiced:temp cooking_pot.slot run function spiced:recipes/remove_pail with storage spiced:temp cooking_pot

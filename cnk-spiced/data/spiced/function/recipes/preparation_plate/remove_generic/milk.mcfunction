function spiced:preparation_plate/prepare/get_items
execute if data storage spiced:temp preparation_plate.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"milk_bottle"}}}}}] run loot spawn ~ ~-0.3 ~ loot spiced:other/glass_bottle
execute if data storage spiced:temp preparation_plate.Items[{id:"minecraft:milk_bucket"}] run loot spawn ~ ~-0.3 ~ loot spiced:other/bucket
execute if data storage spiced:temp preparation_plate.Items[{components:{"minecraft:custom_data":{spiced:{pail:{liquid:"milk"}}}}}] run function spiced:recipes/preparation_plate/remove_generic/pail
function spiced:mixing_bowl/mix/get_items
execute if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"milk_bottle"}}}}}] run loot spawn ~ ~-0.3 ~ loot spiced:other/glass_bottle
execute if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:milk_bucket"}] run loot spawn ~ ~-0.3 ~ loot spiced:other/bucket
execute if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{pail:{liquid:"milk"}}}}}] run function spiced:recipes/mixing_bowl/remove_generic/pail
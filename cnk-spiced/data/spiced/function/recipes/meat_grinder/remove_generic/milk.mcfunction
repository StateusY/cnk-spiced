function spiced:meat_grinder/mash/get_items
execute if data storage cnk:temp meat_grinder.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"milk_bottle"}}}}}] run loot spawn ~ ~-0.3 ~ loot cnk:other/glass_bottle
execute if data storage cnk:temp meat_grinder.Items[{id:"minecraft:milk_bucket"}] run loot spawn ~ ~-0.3 ~ loot cnk:other/bucket
execute if data storage cnk:temp meat_grinder.Items[{components:{"minecraft:custom_data":{cnk:{pail:{liquid:"milk"}}}}}] run function spiced:recipes/meat_grinder/remove_generic/pail
function spiced:preparation_plate/prepare/get_items
execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] run loot spawn ~ ~-0.3 ~ loot cnk:other/glass_bottle
execute if data storage cnk:temp preparation_plate.Items[{id:"minecraft:water_bucket"}] run loot spawn ~ ~-0.3 ~ loot cnk:other/bucket
execute if data storage cnk:temp preparation_plate.Items[{components:{"minecraft:custom_data":{cnk:{pail:{liquid:"water"}}}}}] run function spiced:recipes/preparation_plate/remove_generic/pail
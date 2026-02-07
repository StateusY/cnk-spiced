function spiced:mortar_and_pestle/mash/get_items
execute if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] run loot spawn ~ ~-0.3 ~ loot cnk:other/glass_bottle
execute if data storage cnk:temp mortar_and_pestle.Items[{id:"minecraft:water_bucket"}] run loot spawn ~ ~-0.3 ~ loot cnk:other/bucket
execute if data storage cnk:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{cnk:{pail:{liquid:"water"}}}}}] run function spiced:recipes/mortar_and_pestle/remove_generic/pail
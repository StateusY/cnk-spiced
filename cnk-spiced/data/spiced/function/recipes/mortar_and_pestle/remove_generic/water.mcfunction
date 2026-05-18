function spiced:mortar_and_pestle/mash/get_items
execute if data storage spiced:temp mortar_and_pestle.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] run loot spawn ~ ~-0.3 ~ loot spiced:other/glass_bottle
execute if data storage spiced:temp mortar_and_pestle.Items[{id:"minecraft:water_bucket"}] run loot spawn ~ ~-0.3 ~ loot spiced:other/bucket
execute if data storage spiced:temp mortar_and_pestle.Items[{components:{"minecraft:custom_data":{spiced:{pail:{liquid:"water"}}}}}] run function spiced:recipes/mortar_and_pestle/remove_generic/pail
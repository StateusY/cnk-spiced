function spiced:meat_grinder/grind/get_items
execute if data storage spiced:temp meat_grinder.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] run loot spawn ~ ~-0.3 ~ loot spiced:other/glass_bottle
execute if data storage spiced:temp meat_grinder.Items[{id:"minecraft:water_bucket"}] run loot spawn ~ ~-0.3 ~ loot spiced:other/bucket
execute if data storage spiced:temp meat_grinder.Items[{components:{"minecraft:custom_data":{spiced:{pail:{liquid:"water"}}}}}] run function spiced:recipes/meat_grinder/remove_generic/pail
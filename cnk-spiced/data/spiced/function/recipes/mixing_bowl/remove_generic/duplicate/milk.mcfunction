function spiced:mixing_bowl/mix/get_items


execute store result score $milk_bottle_count spiced.dummy if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"milk_bottle"}}}}}]
execute if score $milk_bottle_count spiced.dummy matches 1 run loot spawn ~ ~-0.3 ~ loot spiced:other/glass_bottle
execute if score $milk_bottle_count spiced.dummy matches 2 run loot spawn ~ ~-0.3 ~ loot spiced:other/glass_bottle_x2
execute if score $milk_bottle_count spiced.dummy matches 3 run loot spawn ~ ~-0.3 ~ loot spiced:other/glass_bottle_x3
execute if score $milk_bottle_count spiced.dummy matches 4 run loot spawn ~ ~-0.3 ~ loot spiced:other/glass_bottle_x4
execute if score $milk_bottle_count spiced.dummy matches 5 run loot spawn ~ ~-0.3 ~ loot spiced:other/glass_bottle_x5

execute store result score $milk_bucket_count spiced.dummy if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:milk_bucket"}]
execute if score $milk_bucket_count spiced.dummy matches 1 run loot spawn ~ ~-0.3 ~ loot spiced:other/bucket
execute if score $milk_bucket_count spiced.dummy matches 2 run loot spawn ~ ~-0.3 ~ loot spiced:other/bucket_x2
execute if score $milk_bucket_count spiced.dummy matches 3 run loot spawn ~ ~-0.3 ~ loot spiced:other/bucket_x3
execute if score $milk_bucket_count spiced.dummy matches 4 run loot spawn ~ ~-0.3 ~ loot spiced:other/bucket_x4
execute if score $milk_bucket_count spiced.dummy matches 5 run loot spawn ~ ~-0.3 ~ loot spiced:other/bucket_x5

execute if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{pail:{liquid:"milk"}}}}}] run function spiced:recipes/mixing_bowl/remove_generic/pail
data modify storage spiced:temp mixing_bowl.temp_item set from entity @s item
execute if data storage spiced:temp mixing_bowl.temp_item.components."minecraft:custom_data" run data remove storage spiced:temp mixing_bowl.temp_item.id
data modify storage spiced:temp mixing_bowl.Items append from storage spiced:temp mixing_bowl.temp_item

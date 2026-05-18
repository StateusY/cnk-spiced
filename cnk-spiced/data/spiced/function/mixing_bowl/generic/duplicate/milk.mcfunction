scoreboard players set $milk_count spiced.dummy 0
scoreboard players set $milk_count_temp spiced.dummy 0

execute store result score $milk_count spiced.dummy if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"milk_bottle"}}}}}]
execute store result score $milk_count_temp spiced.dummy if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:milk_bucket"}]
scoreboard players operation $milk_count spiced.dummy += $milk_count_temp spiced.dummy
execute store result score $milk_count_temp spiced.dummy if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{pail:{liquid:"milk"}}}}}]
scoreboard players operation $milk_count spiced.dummy += $milk_count_temp spiced.dummy

return 1


# scoreboard players set $milk_count spiced.dummy 0

# execute if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"milk_bottle"}}}}}] run scoreboard players add $milk_count spiced.dummy 1
# execute if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:milk_bucket"}] run scoreboard players add $milk_count spiced.dummy 1
# execute if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{pail:{liquid:"milk"}}}}}] run scoreboard players add $milk_count spiced.dummy 1

# return 1
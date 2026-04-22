scoreboard players set $milk_count cnk.dummy 0
scoreboard players set $milk_count_temp cnk.dummy 0

execute store result score $milk_count cnk.dummy if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"milk_bottle"}}}}}]
execute store result score $milk_count_temp cnk.dummy if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:milk_bucket"}]
scoreboard players operation $milk_count cnk.dummy += $milk_count_temp cnk.dummy
execute store result score $milk_count_temp cnk.dummy if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{pail:{liquid:"milk"}}}}}]
scoreboard players operation $milk_count cnk.dummy += $milk_count_temp cnk.dummy

return 1


# scoreboard players set $milk_count cnk.dummy 0

# execute if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"milk_bottle"}}}}}] run scoreboard players add $milk_count cnk.dummy 1
# execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:milk_bucket"}] run scoreboard players add $milk_count cnk.dummy 1
# execute if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{pail:{liquid:"milk"}}}}}] run scoreboard players add $milk_count cnk.dummy 1

# return 1
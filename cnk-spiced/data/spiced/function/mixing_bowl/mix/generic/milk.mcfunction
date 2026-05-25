scoreboard players set $milk_count spiced.dummy 0

execute if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"milk_bottle"}}}}}] run scoreboard players add $milk_count spiced.dummy 1
execute if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:milk_bucket"}] run scoreboard players add $milk_count spiced.dummy 1
execute if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{pail:{liquid:"milk"}}}}}] run scoreboard players add $milk_count spiced.dummy 1

return 1
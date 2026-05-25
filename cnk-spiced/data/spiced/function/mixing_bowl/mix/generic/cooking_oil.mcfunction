scoreboard players set $cooking_oil_count spiced.dummy 0
execute if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cooking_oil"}}}}}] run scoreboard players add $cooking_oil_count spiced.dummy 1
return 1
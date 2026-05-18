scoreboard players set $chicken_count spiced.dummy 0

execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"chicken_cutlets"}}}}}] run scoreboard players add $chicken_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:chicken"}] run scoreboard players add $chicken_count spiced.dummy 1

return 1
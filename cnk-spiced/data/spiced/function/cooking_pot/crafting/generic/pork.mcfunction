scoreboard players set $pork_count spiced.dummy 0

execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"pork_cutlets"}}}}}] run scoreboard players add $pork_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:porkchop"}] run scoreboard players add $pork_count spiced.dummy 1

return 1
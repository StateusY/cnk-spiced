scoreboard players set $mutton_count spiced.dummy 0

execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"mutton_cutlets"}}}}}] run scoreboard players add $mutton_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:mutton"}] run scoreboard players add $mutton_count spiced.dummy 1

return 1
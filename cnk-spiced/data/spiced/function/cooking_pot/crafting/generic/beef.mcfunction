scoreboard players set $beef_count spiced.dummy 0

execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"beef_cutlets"}}}}}] run scoreboard players add $beef_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:beef"}] run scoreboard players add $beef_count spiced.dummy 1

return 1
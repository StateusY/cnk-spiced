scoreboard players set $rabbit_count spiced.dummy 0

execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"rabbit_cutlets"}}}}}] run scoreboard players add $rabbit_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:rabbit"}] run scoreboard players add $rabbit_count spiced.dummy 1

return 1
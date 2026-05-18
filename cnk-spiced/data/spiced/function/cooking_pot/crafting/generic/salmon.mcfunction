scoreboard players set $salmon_count spiced.dummy 0

execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"salmon_fillets"}}}}}] run scoreboard players add $salmon_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:salmon"}] run scoreboard players add $salmon_count spiced.dummy 1

return 1
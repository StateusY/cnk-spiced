scoreboard players set $cod_count spiced.dummy 0

execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cod_fillets"}}}}}] run scoreboard players add $cod_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:cod"}] run scoreboard players add $cod_count spiced.dummy 1

return 1
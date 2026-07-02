scoreboard players set $meat_count spiced.dummy 0
execute if data storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "chicken"}}}}}] run scoreboard players add $meat_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "porkchop"}}}}}] run scoreboard players add $meat_count spiced.dummy 1
return 1

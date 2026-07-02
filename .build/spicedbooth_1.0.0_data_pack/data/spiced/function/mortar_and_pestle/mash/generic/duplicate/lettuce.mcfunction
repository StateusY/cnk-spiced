scoreboard players set $lettuce_count spiced.dummy 0
execute store result score $lettuce_count spiced.dummy if data storage spiced:temp mortar_and_pestle.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "lettuce"}}}}}]
return 1

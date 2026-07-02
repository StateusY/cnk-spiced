scoreboard players set $chunk_of_lettuce_count spiced.dummy 0
execute store result score $chunk_of_lettuce_count spiced.dummy if data storage spiced:temp mortar_and_pestle.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "chunk_of_lettuce"}}}}}]
return 1

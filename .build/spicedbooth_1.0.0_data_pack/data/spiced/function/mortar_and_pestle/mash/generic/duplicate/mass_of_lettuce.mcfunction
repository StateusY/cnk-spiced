scoreboard players set $mass_of_lettuce_count spiced.dummy 0
execute store result score $mass_of_lettuce_count spiced.dummy if data storage spiced:temp mortar_and_pestle.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "mass_of_lettuce"}}}}}]
return 1

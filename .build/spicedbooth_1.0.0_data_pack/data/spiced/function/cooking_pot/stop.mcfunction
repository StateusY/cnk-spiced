execute if entity @s[tag=!spiced.stove] run stopsound @a[distance=..6] block spiced:block.cooking_pot.cooking
scoreboard players reset @s spiced.cook_time
item modify entity @s contents {function: "minecraft:set_custom_model_data", flags: {mode: "replace_section", size: 1, offset: 0, values: [false]}}

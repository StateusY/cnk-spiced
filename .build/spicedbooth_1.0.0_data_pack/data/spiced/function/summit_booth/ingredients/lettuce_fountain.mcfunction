execute store result score $count spiced.dummy run clear @s poisonous_potato[minecraft:custom_data~{spiced: {ingredient: {type: "onion"}}}] 0
execute if score $count spiced.dummy >= $15625 spiced.constant run return run title @s actionbar {text: "you have enough", color: "gray"}
playsound minecraft:block.crop.break block @a[distance=..15]
playsound minecraft:entity.item.pickup block @a[distance=..15] ~ ~ ~ 0.5
loot give @s loot spiced:food/lettuce

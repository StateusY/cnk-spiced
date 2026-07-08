execute store result score $count spiced.dummy run clear @s poisonous_potato[minecraft:custom_data~{"spiced": {"ingredient":{"type":"lettuce"}}}] 0
execute if score $count spiced.dummy >= $729 spiced.constant run return run title @s actionbar {text: "you have enough", color:  "gray"}

playsound minecraft:block.crop.break block @a[tag=summit.in_booth.spiced,distance=..15]
playsound minecraft:entity.item.pickup block @a[tag=summit.in_booth.spiced,distance=..15] ~ ~ ~ 0.5
loot give @s loot spiced:food/lettuce
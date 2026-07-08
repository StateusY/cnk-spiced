execute store result score $count spiced.dummy run clear @s poisonous_potato[minecraft:custom_data~{"spiced": {"ingredient":{"type":"black_pepper"}}}] 0
execute if score $count spiced.dummy > $64 spiced.constant run return run title @s actionbar {text: "why is bro is dedicated to scamming the system of out items T-T", color:  "red"}
execute if score $count spiced.dummy > $16 spiced.constant run return run title @s actionbar {text: "stop being such a greedy goober, you don't even need 16", color:  "red"}
execute if score $count spiced.dummy = $16 spiced.constant run return run title @s actionbar {text: "Cannot Carry More", color:  "red"}

playsound minecraft:item.bundle.remove_one block @a[tag=summit.in_booth.spiced,distance=..15] ~ ~ ~ 2 0.7
playsound minecraft:block.wooden_door.open block @a[tag=summit.in_booth.spiced,distance=..15] ~ ~ ~ 0.5 0.4
playsound minecraft:block.wooden_door.close block @a[tag=summit.in_booth.spiced,distance=..15] ~ ~ ~ 0.5 1.1
playsound minecraft:block.sand.place block @a[tag=summit.in_booth.spiced,distance=..15] ~ ~ ~ 0.9 0.75
playsound minecraft:block.basalt.break block @a[tag=summit.in_booth.spiced,distance=..15] ~ ~ ~ 1.5 0.75
playsound minecraft:entity.item.pickup block @a[tag=summit.in_booth.spiced,distance=..15] ~ ~ ~ 0.5
loot give @s loot spiced:food/black_pepper
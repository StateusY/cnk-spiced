execute store result score $count spiced.dummy run clear @s poisonous_potato[minecraft:custom_data~{"spiced": {"ingredient":{"type":"sunflower"}}}] 0
execute if score $count spiced.dummy > $64 spiced.constant run return run title @s actionbar {text: "why is bro is dedicated to scamming the system of out items T-T", color:  "red"}
execute if score $count spiced.dummy > $16 spiced.constant run return run title @s actionbar {text: "stop being such a greedy goober, you don't even need 16", color:  "red"}
execute if score $count spiced.dummy = $16 spiced.constant run return run title @s actionbar {text: "Cannot Carry More", color:  "red"}

playsound minecraft:block.crop.break block @a[distance=..15]
playsound minecraft:entity.item.pickup block @a[distance=..15] ~ ~ ~ 0.5
loot give @s loot spiced:other/sunflower
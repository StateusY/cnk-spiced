execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{spiced:{knife:true}}] run return 1

execute store result score $count spiced.dummy if items entity @s container.* poisonous_potato[minecraft:custom_data~{"spiced": {"ingredient":{"type":"bell_pepper"}}}]
execute if score $count spiced.dummy > $64 spiced.constant run return run title @s actionbar {text: "why is bro is dedicated to scamming the system of out items T-T", color:  "red"}
execute if score $count spiced.dummy > $16 spiced.constant run return run title @s actionbar {text: "stop being such a greedy goober, you don't even need 16", color:  "red"}
execute if score $count spiced.dummy = $16 spiced.constant run return run title @s actionbar {text: "Cannot Carry More", color:  "red"}

execute as @a[tag=summit.in_booth.spiced,distance=..15] run function spiced:ingredients/sfx/crop
loot give @s loot spiced:food/bell_pepper
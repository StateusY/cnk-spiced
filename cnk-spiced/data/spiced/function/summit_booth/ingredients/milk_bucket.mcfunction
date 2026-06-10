execute store result score $count spiced.dummy run clear @s poisonous_potato[minecraft:custom_data~{"spiced": {"ingredient":{"type":"milk_bottle"}}}] 0
execute if score $count spiced.dummy > $64 spiced.constant run return run title @s actionbar {text: "why is bro is dedicated to scamming the system of out items T-T", color:  "red"}
execute if score $count spiced.dummy > $16 spiced.constant run return run title @s actionbar {text: "stop being such a greedy goober, you don't even need 16", color:  "red"}
execute if score $count spiced.dummy = $16 spiced.constant run return run title @s actionbar {text: "Cannot Carry More", color:  "red"}

execute unless items entity @s weapon.mainhand glass_bottle run playsound minecraft:block.wood.step block @a[distance=..15]
execute unless items entity @s weapon.mainhand glass_bottle run return run title @s actionbar {text: "Interact with Glass Bottle", color:  "red"}

playsound minecraft:item.bottle.fill block @a[distance=..15]
item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
loot give @s loot spiced:food/milk_bottle
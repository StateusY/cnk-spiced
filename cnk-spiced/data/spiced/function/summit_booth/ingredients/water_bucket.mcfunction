execute unless items entity @s weapon.mainhand glass_bottle run playsound minecraft:block.wood.step block @a[distance=..15]
execute unless items entity @s weapon.mainhand glass_bottle run return run title @s actionbar {text: "Interact with Glass Bottle", color:  "red"}

playsound minecraft:item.bottle.fill block @a[distance=..15]
item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
loot give @s loot spiced:food/water_bottle
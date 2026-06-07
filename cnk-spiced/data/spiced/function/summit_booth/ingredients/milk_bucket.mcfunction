execute unless items entity @s weapon.mainhand glass_bottle run playsound minecraft:block.wood.step block @a[distance=..15]
execute unless items entity @s weapon.mainhand glass_bottle run return run title @s actionbar {text: "Interact with Glass Bottle", color:  "red"}

playsound minecraft:item.bottle.fill block @a[distance=..15]
clear @s glass_bottle 1
loot give @s loot spiced:food/milk_bottle
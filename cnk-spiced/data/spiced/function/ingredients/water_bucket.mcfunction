function summit.items:api/count_items {custom_data:"{spiced: {ingredient:{type:'water_bottle'}}", max:5}

execute if score $below_max summit.temp matches 0 run return fail
execute unless items entity @s weapon.mainhand glass_bottle run playsound minecraft:block.wood.step block @a[tag=summit.in_booth.spiced,distance=..15]
execute unless items entity @s weapon.mainhand glass_bottle run return run title @s actionbar {text: "Interact with Glass Bottle", color:  "red"}

playsound minecraft:item.bottle.fill block @a[tag=summit.in_booth.spiced,distance=..15]
item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
loot give @s loot spiced:food/water_bottle
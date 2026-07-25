clear @s minecraft:written_book[minecraft:custom_data~{"spiced":{"cookbook":true}}]
clear @s minecraft:poisonous_potato[minecraft:custom_data~{"cnk":{"knife":true}}]

playsound minecraft:entity.item.pickup block @s ~ ~ ~ 0.5
loot give @s loot spiced:other/demo_cookbook
function spiced:extras/give_knife

tag @s add spiced.cellar_dwellar
stopsound @s ambient spiced:ambient.fountain.guitar
execute if entity @s[tag=spiced.cellar_feller] run effect give @s minecraft:darkness infinite 0 true
effect give @s minecraft:blindness infinite 0 true
tp @s 193 53 177 ~90 ~

playsound minecraft:block.wooden_door.open block @s ~ ~ ~ 1 0.3 1
playsound minecraft:block.wooden_door.open block @s ~ ~ ~ 1 0.5 1
playsound minecraft:block.wooden_door.open block @s ~ ~ ~ 1 0.7 1
playsound minecraft:block.iron_trapdoor.close block @s ~ ~ ~ 2 1.2 1
playsound minecraft:block.iron_trapdoor.close block @s ~ ~ ~ 2 1.1 1
playsound minecraft:block.iron_trapdoor.close block @s ~ ~ ~ 2 0.3 1
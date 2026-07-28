tag @s add spiced.cellar_dwellar
execute if entity @s[tag=spiced.cellar_feller] run effect give @s minecraft:darkness infinite 0 true
effect give @s minecraft:blindness infinite 0 true
tp @s 220 54 188

playsound minecraft:item.wolf_armor.crack ambient @s ~ ~ ~ 0.5 0.1 1
playsound minecraft:entity.turtle.egg_crack ambient @s ~ ~ ~ 1 0.1 1
playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~ ~ 0.2 2 1
playsound spiced:ambient.cellar.laugh ambient @s ~ ~ ~ 1 1 1

function spiced:bounds/cellar/sound_sfx

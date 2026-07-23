tag @s add spiced.cellar_dwellar
effect give @s minecraft:blindness infinite 0 true
tp @s 220 54 188

playsound minecraft:item.wolf_armor.crack ambient @s ~ ~ ~ 0.5 0.1 1
playsound minecraft:entity.turtle.egg_crack ambient @s ~ ~ ~ 1 0.1 1
playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~ ~ 0.2 2 1

execute store result storage spiced:temp random.cellar_sound int 1 run random value 40..75

function spiced:bounds/cellar/sound_schedule with storage spiced:temp random

execute if score $random_noise spiced.dummy matches 1 run loot give @s loot spiced:other/plastic_knife
execute if score $random_noise spiced.dummy matches 2 run loot give @s loot spiced:other/grimwart_knife
execute if score $random_noise spiced.dummy matches 3 run loot give @s loot spiced:other/butcher_knife
execute if score $random_noise spiced.dummy matches 4 run loot give @s loot spiced:other/stardust_knife
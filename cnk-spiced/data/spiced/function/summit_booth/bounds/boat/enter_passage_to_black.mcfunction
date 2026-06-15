tp @s 198 54 203
playsound minecraft:block.wooden_door.open block @s ~ ~ ~ 1 0.75 1

tag @s add spiced.hull_passage
execute positioned 190 54 203 run function spiced:summit_booth/extras/cargo_shuffle/shuffle
schedule function spiced:summit_booth/bounds/boat/passage_black_check 15t replace
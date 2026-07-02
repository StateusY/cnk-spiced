tp @s 202 64 205
execute positioned 190 54 203 run function spiced:summit_booth/extras/cargo_shuffle/unload
playsound minecraft:block.wooden_door.close block @s ~ ~ ~ 2 0.75 1
tag @s remove spiced.hull_passage_exit

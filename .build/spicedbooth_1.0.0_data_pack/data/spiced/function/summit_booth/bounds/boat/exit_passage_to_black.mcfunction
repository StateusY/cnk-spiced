tp @s 198 54 203
playsound minecraft:block.wooden_door.open block @s ~ ~ ~ 1 0.75 1
tag @s add spiced.hull_passage_exit
tag @s remove spiced.in_hull
schedule function spiced:summit_booth/bounds/boat/passage_black_check 15 replace

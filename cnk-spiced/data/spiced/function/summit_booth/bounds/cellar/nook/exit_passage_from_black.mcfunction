tp @s 186 53 173
playsound minecraft:block.wooden_door.close block @s ~ ~ ~ 2 0.75 1
execute at @e[type=item_display,tag=spiced.lettuce_statue] run playsound spiced:ambient.fountain.guitar ambient @s ~ ~ ~
tag @s remove spiced.nook_passage_exit
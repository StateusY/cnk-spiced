particle minecraft:poof ~ ~0.3 ~ 0.2 0.2 0.2 0.02 20
playsound ui.hud.bubble_pop block @a ~ ~ ~ 1 1

execute run data modify storage cnk:temp c4t.rotation set from entity @s Rotation[0]
execute at @s align xyz positioned ~0.5 ~ ~0.5 run function spiced:c4t/macro with storage cnk:temp c4t

execute on passengers run kill @s
kill @s

advancement grant @p[tag=spiced.c4t_advancement] only spiced:visible/c4t
tag @p[tag=spiced.c4t_advancement] remove spiced.c4t_advancement
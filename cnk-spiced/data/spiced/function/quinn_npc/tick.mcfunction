# Generated with MC-Build

execute if score #spiced.quinn_npc.chatting spiced.dummy matches 1 as @e[type=mannequin,tag=spiced.quinn_npc,limit=1] at @s run return run rotate @s facing entity @p
execute store result score #random spiced.dummy run random value 0..50
execute unless score #spiced.whos_talking spiced.dummy matches 1 if score #random spiced.dummy matches 0 run function spiced:quinn_npc/eats
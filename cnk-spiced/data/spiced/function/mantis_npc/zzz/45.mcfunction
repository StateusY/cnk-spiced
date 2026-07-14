# Generated with MC-Build

execute positioned 227 75 183 run loot give @p[tag=summit.in_booth.spiced,distance=..12] loot thorax:items/mantis_memento
execute positioned 227 75 183 run playsound minecraft:entity.item.pickup player @p[tag=summit.in_booth.spiced,distance=..12] ~ ~ ~ 0.5 1
schedule function spiced:mantis_npc/zzz/44 25t replace
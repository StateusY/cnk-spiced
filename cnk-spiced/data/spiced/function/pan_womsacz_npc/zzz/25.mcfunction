# Generated with MC-Build

execute positioned 200 64 207 run loot give @p[tag=summit.in_booth.spiced,distance=..12] loot spiced:other/rammy
execute positioned 200 64 207 run playsound minecraft:entity.item.pickup player @p[tag=summit.in_booth.spiced,distance=..12] ~ ~ ~ 0.5 1
schedule function spiced:pan_womsacz_npc/zzz/24 80t replace
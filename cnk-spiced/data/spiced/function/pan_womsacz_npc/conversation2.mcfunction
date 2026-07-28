# Generated with MC-Build

execute positioned 200 64 207 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/pan
execute positioned 200 64 207 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:pan_womsacz_npc/says {message:[{text:'Did', color: '#e4741d'}, ' you', ' know', ' there', ' are', ' two', ' things', ' you', ' can', ' wear', ' in', ' the', ' booth?']}
schedule function spiced:pan_womsacz_npc/zzz/29 100t replace
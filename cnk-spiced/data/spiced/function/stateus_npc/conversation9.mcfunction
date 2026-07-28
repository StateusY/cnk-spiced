# Generated with MC-Build

execute positioned 225 52 197 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/stateus
execute positioned 225 52 197 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:stateus_npc/says {message:[{text:'Great', color: '#3a552c'}, ' job', ' finding', ' me!']}
schedule function spiced:stateus_npc/zzz/109 80t replace
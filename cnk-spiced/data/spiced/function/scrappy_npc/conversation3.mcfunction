# Generated with MC-Build

execute positioned 228 80 176 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/scrappy
execute positioned 228 80 176 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:scrappy_npc/says {message:[{text:'Lettuce', color: '#ebe296'}, ' lettuce', ' lettuce', ' lettuce']}
schedule function spiced:scrappy_npc/zzz/27 64t replace
# Generated with MC-Build

execute positioned 213 53 186 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/bush
execute positioned 213 53 186 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:bush_npc/says {message:[{text:'How', color: '#2a5f0a'}, ' had', ' she', ' been', ' so', ' wrong?']}
schedule function spiced:bush_npc/zzz/45 94t replace
# Generated with MC-Build

execute positioned 213 53 186 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/bush
function spiced:extras/npc_sticker_check
function spiced:bush_npc/says {message:[{text:'Here\'s', color: '#2a5f0a'}, ' the', ' thing.']}
schedule function spiced:bush_npc/zzz/81 61t replace
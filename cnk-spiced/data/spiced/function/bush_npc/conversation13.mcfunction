# Generated with MC-Build

execute positioned 213 53 186 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/bush
function spiced:extras/npc_sticker_check
function spiced:bush_npc/says {message:[{text:'The', color: '#2a5f0a'}, ' bush', ' began', ' to', ' shake.']}
schedule function spiced:bush_npc/zzz/117 81t replace
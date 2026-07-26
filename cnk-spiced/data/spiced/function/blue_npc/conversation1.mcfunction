# Generated with MC-Build

execute positioned 218 62 186 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/blue
function spiced:extras/npc_sticker_check
function spiced:blue_npc/says {message:[{text:'Glub', color: '#0021d9'}, ' glub...']}
schedule function spiced:blue_npc/zzz/7 60t replace
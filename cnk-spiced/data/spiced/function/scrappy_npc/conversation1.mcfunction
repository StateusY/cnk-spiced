# Generated with MC-Build

execute positioned 228 80 176 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/scrappy
function spiced:extras/npc_sticker_check
function spiced:scrappy_npc/says {message:[{text:'The', color: '#ebe296'}, ' sea', ' washes', ' upon', ' these', ' digital', ' shores', ' over', ' and', ' over.']}
schedule function spiced:scrappy_npc/zzz/17 127t replace
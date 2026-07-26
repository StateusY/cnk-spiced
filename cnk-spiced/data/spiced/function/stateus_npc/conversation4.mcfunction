# Generated with MC-Build

execute positioned 225 52 197 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/stateus
function spiced:extras/npc_sticker_check
function spiced:stateus_npc/says {message:[{text:'I', color: '#3a552c'}, ' met', ' Pan', ' about', ' half', ' a', ' year', ' ago.']}
schedule function spiced:stateus_npc/zzz/55 80t replace
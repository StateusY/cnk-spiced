# Generated with MC-Build

execute positioned 225 52 197 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/stateus
function spiced:stateus_npc/says {message:[{text:'Someday', color: '#3a552c'}, ' we', ' will', ' have', ' some', ' tech', ' in', ' Spiced.']}
schedule function spiced:stateus_npc/zzz/95 80t replace
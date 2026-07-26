# Generated with MC-Build

execute positioned 225 52 197 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/stateus
function spiced:stateus_npc/says {message:[{text:'This', color: '#3a552c'}, ' is', ' my', ' first', ' time', ' being', ' a', ' Summit', ' vendor.']}
schedule function spiced:stateus_npc/zzz/73 80t replace
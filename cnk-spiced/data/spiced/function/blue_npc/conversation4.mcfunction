# Generated with MC-Build

execute positioned 218 62 186 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/blue
function spiced:blue_npc/says {message:[{text:'My', color: '#0021d9'}, ' name', ' is', ' Blue,', ' just', ' like', ' this', ' water.']}
schedule function spiced:blue_npc/zzz/25 80t replace
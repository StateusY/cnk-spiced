# Generated with MC-Build

execute positioned 215 85 189 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/c4t
function spiced:c4t_npc/says {message:[{text:'I', color: 'gold'}, ' am', ' planned', ' for', ' Spiced.']}
schedule function spiced:c4t_npc/zzz/35 80t replace
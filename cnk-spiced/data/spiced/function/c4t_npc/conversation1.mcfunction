# Generated with MC-Build

execute positioned 215 85 189 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/c4t
function spiced:c4t_npc/says {message:[{text:'Yes,', color: 'gold'}, ' I\'m', ' a', ' cat.']}
schedule function spiced:c4t_npc/zzz/23 40t replace
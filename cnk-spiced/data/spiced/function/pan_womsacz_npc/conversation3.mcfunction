# Generated with MC-Build

execute positioned 200 64 207 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/pan
function spiced:pan_womsacz_npc/says {message:[{text:'Remember,', color: '#e4741d'}, ' some', ' ingredients', ' vanish', ' when', ' you', ' leave', ' the', ' booth.']}
schedule function spiced:pan_womsacz_npc/zzz/33 80t replace
# Generated with MC-Build

execute positioned 200 64 207 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/pan
function spiced:pan_womsacz_npc/says {message:[{text:'There', color: '#e4741d'}, ' are', ' some', ' spices', ' under', ' deck.']}
schedule function spiced:pan_womsacz_npc/zzz/73 80t replace
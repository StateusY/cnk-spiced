# Generated with MC-Build

execute positioned 227 75 183 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/mantis
function spiced:mantis_npc/says {message:[{text:'My', color: '#f0d8c8'}, ' siblings', ' are', ' probably', ' wondering', ' where', ' I', ' am,', ' I', ' was', ' supposed', ' to', ' be', ' helping...']}
schedule function spiced:mantis_npc/zzz/17 120t replace
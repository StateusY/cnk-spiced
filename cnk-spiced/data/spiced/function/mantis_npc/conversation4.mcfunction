# Generated with MC-Build

execute positioned 227 75 183 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/mantis
function spiced:extras/npc_sticker_check
function spiced:mantis_npc/says {message:[{text:'I', color: '#f0d8c8'}, ' used', ' to', ' crave', ' perfection.', ' I', ' would', ' tear', ' up', ' my', ' work', ' if', ' it', ' was', ' insufficient,', ' I\'d', ' compare', ' myself', ' to', ' others...']}
schedule function spiced:mantis_npc/zzz/29 140t replace
# Generated with MC-Build

execute positioned 200 64 207 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/pan
function spiced:extras/npc_sticker_check
function spiced:pan_womsacz_npc/says {message:[{text:'You', color: '#e4741d'}, ' can', ' join', ' our', ' Discord', ' server', ' to', ' stay', ' updated', ' about', ' Spiced', ' and', ' our', ' other', ' packs!']}
schedule function spiced:pan_womsacz_npc/zzz/49 100t replace
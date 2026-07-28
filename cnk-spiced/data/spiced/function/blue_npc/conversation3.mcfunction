# Generated with MC-Build

execute positioned 218 62 186 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/blue
execute positioned 218 62 186 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:blue_npc/says {message:[{text:'Just', color: '#0021d9'}, ' keeping', ' an', ' eye', ' on', ' these', ' AJ', ' shipments']}
schedule function spiced:blue_npc/zzz/23 80t replace
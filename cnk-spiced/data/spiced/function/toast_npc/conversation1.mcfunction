# Generated with MC-Build

execute positioned 223 72 203 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/toast
execute positioned 223 72 203 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:toast_npc/says {message:[{text:'Oh,', color: '#669fb2'}, ' don\'t', ' mind', ' me.']}
schedule function spiced:toast_npc/zzz/19 48t replace
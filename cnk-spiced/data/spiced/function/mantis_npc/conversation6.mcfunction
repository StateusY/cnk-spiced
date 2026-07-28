# Generated with MC-Build

execute positioned 227 75 183 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/mantis
execute positioned 227 75 183 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:mantis_npc/says {message:[{text:'Thanks', color: '#f0d8c8'}, ' for', ' listening', ' to', ' my', ' ramblings,', ' I', ' hope', ' you', ' enjoy', ' the', ' rest', ' of', ' the', ' Summit,', ' however', ' much', ' time', ' that', ' is.']}
schedule function spiced:mantis_npc/zzz/47 140t replace
# Generated with MC-Build

execute positioned 227 75 183 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/mantis
execute positioned 227 75 183 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:mantis_npc/says {message:[{text:'A', color: '#f0d8c8'}, ' shame', ' we', ' only', ' have', ' two', ' weeks', ' left', ' together...', ' maybe', ' only', ' a', ' few', ' hours', ' depending', ' on', ' when', ' you\'ve', ' found', ' me...']}
schedule function spiced:mantis_npc/zzz/39 140t replace
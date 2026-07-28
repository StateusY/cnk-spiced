# Generated with MC-Build

execute positioned 189 53 181 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/quinn
execute positioned 189 53 181 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:quinn_npc/says {message:[{text:'You', color: '#60a561'}, ' know', ' what', ' people', ' say...']}
schedule function spiced:quinn_npc/zzz/50 57t replace
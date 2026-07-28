# Generated with MC-Build

execute positioned 195 65 173 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/xela
execute positioned 195 65 173 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:xela_npc/says {message:[{text:'Spare', color: '#2a5f0a'}, ' any', ' change?']}
schedule function spiced:xela_npc/zzz/15 41t replace
# Generated with MC-Build

execute positioned 213 53 186 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/bush
execute positioned 213 53 186 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:bush_npc/says {message:[{text:'The', color: '#2a5f0a'}, ' bridge', ' spanning', ' a', ' 100-foot', ' gully', ' stood', ' in', ' front', ' of', ' him', ' as', ' the', ' last', ' obstacle', ' blocking', ' him', ' from', ' reaching', ' his', ' destination.']}
schedule function spiced:bush_npc/zzz/99 246t replace
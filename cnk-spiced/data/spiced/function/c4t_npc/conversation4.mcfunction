# Generated with MC-Build

execute positioned 215 85 189 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/c4t
function spiced:extras/npc_sticker_check
function spiced:c4t_npc/says {message:[{text:'Have', color: 'gold'}, ' you', ' found', ' Cinnamon', ' yet?']}
schedule function spiced:c4t_npc/zzz/51 60t replace
# Generated with MC-Build

execute positioned 225 52 197 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/stateus
function spiced:extras/npc_sticker_check
function spiced:stateus_npc/says {message:[{text:'Welcome', color: '#3a552c'}, ' to', ' the', ' Spiced', ' booth!']}
schedule function spiced:stateus_npc/zzz/39 80t replace
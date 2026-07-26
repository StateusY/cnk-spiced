# Generated with MC-Build

execute positioned 227 75 183 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/mantis
function spiced:extras/npc_sticker_check
function spiced:mantis_npc/says {message:[{text:'Hey', color: '#f0d8c8'}, ' there!', ' Seems', ' like', ' I', ' went', ' to', ' the', ' wrong', ' booth,', ' huh?']}
schedule function spiced:mantis_npc/zzz/11 80t replace
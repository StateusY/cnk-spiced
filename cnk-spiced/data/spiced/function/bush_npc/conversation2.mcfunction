# Generated with MC-Build

execute positioned 213 53 186 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/bush
function spiced:extras/npc_sticker_check
function spiced:bush_npc/says {message:[{text:'She', color: '#2a5f0a'}, ' glanced', ' up', ' into', ' the', ' sky', ' to', ' watch', ' the', ' clouds', ' taking', ' shape.']}
schedule function spiced:bush_npc/zzz/17 140t replace
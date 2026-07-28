# Generated with MC-Build

execute positioned 183 53 193 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/vault_emma
execute positioned 183 53 193 as @p[tag=summit.in_booth.spiced,distance=..12,limit=4] run function spiced:extras/npc_sticker_check
function spiced:vault_emma_npc/vault/says {message:[{text:'I', color: '#9171ba'}, ' just', ' figured', ' out', ' a', ' way', ' more', ' efficent', ' way', ' to', ' use', ' the', ' mortar', ' and', ' pestle!']}
schedule function spiced:vault_emma_npc/zzz/15 120t replace
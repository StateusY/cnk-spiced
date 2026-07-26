# Generated with MC-Build

execute positioned 183 53 193 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/vault_emma
function spiced:vault_emma_npc/vault/says {message:[{text:'I', color: '#9171ba'}, ' just', ' figured', ' out', ' out', ' a', ' way', ' more', ' efficent', ' way', ' to', ' use', ' the', ' mortar', ' and', ' pestle!']}
schedule function spiced:vault_emma_npc/zzz/15 120t replace
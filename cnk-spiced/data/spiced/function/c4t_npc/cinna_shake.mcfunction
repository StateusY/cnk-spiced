# Generated with MC-Build

item modify entity @s weapon.mainhand spiced:remove_one
advancement grant @s only spiced:npcs/c4t
function spiced:extras/npc_sticker_check
advancement grant @s only summit.sticker_book:spiced/cinna_shake
function spiced:c4t_npc/says {message:[{text:'A', color: 'gold'}, ' cinna', ' shake!!!']}
schedule function spiced:c4t_npc/zzz/13 40t replace
# Generated with MC-Build

item modify entity @s weapon.mainhand spiced:remove_one
execute positioned 215 85 189 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/c4t
function spiced:c4t_npc/says {message:[{text:'A', color: 'gold'}, ' cinna', ' shake!!!']}
schedule function spiced:c4t_npc/zzz/13 40t replace
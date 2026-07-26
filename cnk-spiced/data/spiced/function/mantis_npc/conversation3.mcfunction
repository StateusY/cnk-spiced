# Generated with MC-Build

execute positioned 227 75 183 run advancement grant @p[tag=summit.in_booth.spiced,distance=..12,limit=4] only spiced:npcs/mantis
function spiced:mantis_npc/says {message:[{text:'So', color: '#f0d8c8'}, ' many', ' people', ' coming', ' together', ' to', ' show', ' their', ' creations...', ' it\'s', ' pretty', ' inspiring', ' honestly.']}
schedule function spiced:mantis_npc/zzz/23 110t replace
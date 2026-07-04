
# stateus
summon mannequin 222 78 177 {Rotation:[0f, 0f], Tags:["summit.booth_entity.spiced", 'summit.static', 'spiced.npc'],Invulnerable:1b,immovable:true,profile:{name:stateus}}
summon interaction -22 69 234 { Tags:['summit.static',"summit.booth_entity.spiced", 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:npc/stateus/main', on_left_click: 'function spiced:npc/stateus/main', } } }
# Generated with MC-Build

data modify storage spiced:stateus_npc conversation_order set value []
data modify storage spiced:stateus_npc conversations set value [1,2,3,4,5,6,7,8,9,10,11]
scoreboard players set #spiced.stateus_npc.chatting spiced.dummy 0
scoreboard players set #spiced.stateus_npc.mining_timer spiced.dummy 0
summon mannequin 225 52 197 {Rotation:[180f, 0f], Tags:['summit.booth_entity.spiced', 'spiced.stateus_npc'],Invulnerable:1b,immovable:true,profile:{name:'stateus'},hide_description:true}
summon interaction 225 52 197 { Tags:['summit.booth_entity.spiced', 'summit.static', 'spiced.stateus_npc.interaction', 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:stateus_npc/start_conversation', on_left_click: 'function spiced:stateus_npc/start_conversation', } } }
function spiced:stateus_npc/reset
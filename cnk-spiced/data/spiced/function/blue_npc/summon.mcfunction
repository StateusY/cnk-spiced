# Generated with MC-Build

data modify storage spiced:blue_npc conversation_order set value []
data modify storage spiced:blue_npc conversations set value [1,2,3,4]
scoreboard players set #spiced.blue_npc.chatting spiced.dummy 0
scoreboard players set #spiced.blue_npc.mining_timer spiced.dummy 0
summon mannequin 218 62 186 {Rotation:[0f, 0f], Tags:['summit.booth_entity.spiced', 'spiced.blue_npc'],Invulnerable:1b,immovable:true,profile:{name:'actuallyblue'},hide_description:true}
summon interaction 218 62 186 { Tags:['summit.booth_entity.spiced', 'summit.static', 'spiced.blue_npc.interaction', 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:blue_npc/start_conversation', on_left_click: 'function spiced:blue_npc/start_conversation', } } }
function spiced:blue_npc/reset
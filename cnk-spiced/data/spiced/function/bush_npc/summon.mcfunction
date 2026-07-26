# Generated with MC-Build

data modify storage spiced:bush_npc conversation_order set value []
data modify storage spiced:bush_npc conversations set value [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
scoreboard players set #spiced.bush_npc.chatting spiced.dummy 0
scoreboard players set #spiced.bush_npc.mining_timer spiced.dummy 0
summon mannequin 213 53 186 {Rotation:[0f, 0f], Tags:['summit.booth_entity.spiced', 'spiced.bush_npc'],Invulnerable:1b,immovable:true,profile:{name:'bush_lord'},hide_description:true}
execute positioned 213 53 186 run swing @e[type=mannequin,tag=spiced.bush_npc, limit=1,distance=..1]
summon interaction 213 53 186 { Tags:['summit.booth_entity.spiced', 'summit.static', 'spiced.bush_npc.interaction', 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:bush_npc/start_conversation', on_left_click: 'function spiced:bush_npc/start_conversation', } } }
function spiced:bush_npc/reset
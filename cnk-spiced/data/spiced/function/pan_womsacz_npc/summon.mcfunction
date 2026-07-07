# Generated with MC-Build

data modify storage spiced:pan_womsacz_npc conversation_order set value []
data modify storage spiced:pan_womsacz_npc conversations set value [1,2,3]
scoreboard players set #spiced.pan_womsacz_npc.chatting spiced.dummy 0
scoreboard players set #spiced.pan_womsacz_npc.mining_timer spiced.dummy 0
summon mannequin 200 64 207 {Rotation:[0f, 0f], Tags:['summit.booth_entity.spiced', 'spiced.pan_womsacz_npc'],Invulnerable:1b,immovable:true,equipment:{mainhand:{id:'minecraft:fishing_rod'}},profile:{name:'pan_womsacz'},hide_description:true}
summon interaction 200 64 207 { Tags:['summit.booth_entity.spiced', 'summit.static', 'spiced.pan_womsacz_npc.interaction', 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:pan_womsacz_npc/start_conversation', on_left_click: 'function spiced:pan_womsacz_npc/start_conversation', } } }
function spiced:pan_womsacz_npc/reset
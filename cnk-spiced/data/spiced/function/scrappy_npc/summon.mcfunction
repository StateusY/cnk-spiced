# Generated with MC-Build

data modify storage spiced:scrappy_npc conversation_order set value []
data modify storage spiced:scrappy_npc conversations set value [5]
scoreboard players set #spiced.scrappy_npc.chatting spiced.dummy 0
scoreboard players set #spiced.scrappy_npc.mining_timer spiced.dummy 0
summon mannequin 228 80.5 176 {Rotation:[-125f, 0f], Tags:['summit.booth_entity.spiced', 'spiced.scrappy_npc'],Invulnerable:1b,immovable:true,profile:{name:'itzscraqpy'},hide_description:true}
execute positioned 228 80.5 176 run swing @e[type=mannequin,tag=spiced.scrappy_npc, limit=1,distance=..1]
summon interaction 228 80.5 176 { Tags:['summit.booth_entity.spiced', 'summit.static', 'spiced.scrappy_npc.interaction', 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:scrappy_npc/start_conversation', on_left_click: 'function spiced:scrappy_npc/start_conversation', } } }
function spiced:scrappy_npc/reset
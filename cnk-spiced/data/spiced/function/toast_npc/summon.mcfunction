# Generated with MC-Build

data modify storage spiced:toast_npc conversation_order set value []
data modify storage spiced:toast_npc conversations set value [1]
scoreboard players set #spiced.toast_npc.chatting spiced.dummy 0
scoreboard players set #spiced.toast_npc.mining_timer spiced.dummy 0
summon mannequin 222.5 72.0 202.9 {Rotation:[75f, 0f], Tags:['summit.booth_entity.spiced', 'spiced.toast_npc'],Invulnerable:1b,immovable:true,profile:{name:'toastoneandonly'},hide_description:true}
# execute positioned 189 53 181 run swing @e[type=mannequin,distance=..1,limit=1]
setblock 222 72 203 air
setblock 222 72 202 air
summon interaction 222.5 72.0 202.9 { Tags:['summit.booth_entity.spiced', 'summit.static', 'spiced.toast_npc.interaction', 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:toast_npc/start_conversation', on_left_click: 'function spiced:toast_npc/start_conversation', } } }
function spiced:toast_npc/reset
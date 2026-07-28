# Generated with MC-Build

data modify storage spiced:xela_npc conversation_order set value []
data modify storage spiced:xela_npc conversations set value [1]
scoreboard players set #spiced.xela_npc.chatting spiced.dummy 0
scoreboard players set #spiced.xela_npc.mining_timer spiced.dummy 0
summon mannequin 195 65 173 {Rotation:[-125f, 0f], Tags:['summit.booth_entity.spiced', 'spiced.xela_npc'],Invulnerable:1b,immovable:true,profile:{name:'xelafella'},hide_description:true,equipment:{mainhand:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:mac_and_cheese"}},offhand:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:grilled_cheese"}}}}
# execute positioned 189 53 181 run swing @e[type=mannequin,distance=..1,limit=1]
summon interaction 195 65 173 { Tags:['summit.booth_entity.spiced', 'summit.static', 'spiced.xela_npc.interaction', 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:xela_npc/start_conversation', on_left_click: 'function spiced:xela_npc/start_conversation', } } }
function spiced:xela_npc/reset
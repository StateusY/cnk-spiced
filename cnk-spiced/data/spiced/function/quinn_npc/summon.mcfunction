# Generated with MC-Build

data modify storage spiced:quinn_npc conversation_order set value []
data modify storage spiced:quinn_npc conversations set value [1,2,3,4]
scoreboard players set #spiced.quinn_npc.chatting spiced.dummy 0
summon mannequin 189 53 181 {Rotation:[145f, 45f], Tags:['summit.booth_entity.spiced', 'spiced.quinn_npc'],Invulnerable:1b,immovable:true,profile:{name:'ghubby'},hide_description:true,pose:crouching,equipment:{mainhand:{id:"minecraft:barrier",components:{"minecraft:item_model":"spiced:lettuce"}}}}
summon interaction 189 53 181 { Tags:['summit.booth_entity.spiced', 'summit.static', 'spiced.quinn_npc.interaction', 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:quinn_npc/start_conversation', on_left_click: 'function spiced:quinn_npc/start_conversation', } } }
function spiced:quinn_npc/reset
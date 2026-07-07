# Generated with MC-Build

data modify storage spiced:greg conversation_order set value []
data modify storage spiced:greg conversations set value [5]
scoreboard players set #spiced.greg.chatting v 0
scoreboard players set #spiced.greg.mining_timer v 0
summon mannequin -64.25 76 232.25 {Rotation:[160f, 0f], Tags:['', 'summit.static', 'spiced.greg'],Invulnerable:1b,immovable:true,equipment:{head:{id:"minecraft:pufferfish",count:1,components:{"minecraft:item_model":"aj_booth:hard_hat"}}},profile:{name:"greg"},hide_description:true}
summon interaction -64.25 76 232.25 { Tags:['', 'summit.static', 'spiced.greg.interaction', 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:greg/start_conversation', on_left_click: 'function spiced:greg/start_conversation', } } }
function spiced:greg/reset
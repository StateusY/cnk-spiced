# Generated with MC-Build

data modify storage spiced:mantis_npc conversation_order set value []
data modify storage spiced:mantis_npc conversations set value [1,2,3,4,5,6]
scoreboard players set #spiced.mantis_npc.chatting spiced.dummy 0
scoreboard players set #spiced.mantis_npc.mining_timer spiced.dummy 0
summon mannequin 227 73.9 183 {Rotation:[90f, 0f], Tags:['summit.booth_entity.spiced', 'spiced.mantis_npc'],Invulnerable:1b,immovable:true,profile:{name:'stateus'},hide_description:true,active_effects:[{id:invisibility,show_particles:false,duration:-1}],equipment:{head:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"thorax:entity/bug/praying_mantis"}}}}
summon interaction 227 75 183 { Tags:['summit.booth_entity.spiced', 'summit.static', 'spiced.mantis_npc.interaction', 'summit.interactable'], width:1f, height:1f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:mantis_npc/start_conversation', on_left_click: 'function spiced:mantis_npc/start_conversation', } } }
function spiced:mantis_npc/reset
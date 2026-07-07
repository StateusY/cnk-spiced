# Generated with MC-Build

data modify storage spiced:c4t_npc conversation_order set value []
data modify storage spiced:c4t_npc conversations set value [1,2,3]
scoreboard players set #spiced.c4t_npc.chatting spiced.dummy 0
scoreboard players set #spiced.c4t_npc.mining_timer spiced.dummy 0
summon item_display 215 86.5 189 {item_display:"ground",Tags:["summit.booth_entity.spiced", 'spiced.c4t_npc'],transformation:{left_rotation: [0.0f, -0.6156615f, 0.0f, 0.78801084f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:c4t"}}}
summon mannequin 215 85 189 {Rotation:[180f, 0f], Tags:['summit.booth_entity.spiced', 'spiced.c4t_npc'],Invulnerable:1b,immovable:true,profile:{name:'stateus'},hide_description:true,active_effects:[{id:invisibility,show_particles:false,duration:-1}]}
summon interaction 215 86 189 { Tags:['summit.booth_entity.spiced', 'summit.static', 'spiced.c4t_npc.interaction', 'summit.interactable'], width:1f, height:1f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:c4t_npc/start_conversation', on_left_click: 'function spiced:c4t_npc/start_conversation', } } }
function spiced:c4t_npc/reset
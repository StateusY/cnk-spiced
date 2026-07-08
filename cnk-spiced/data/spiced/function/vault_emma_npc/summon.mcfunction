# Generated with MC-Build

data modify storage spiced:vault_emma_npc conversation_order set value []
data modify storage spiced:vault_emma_npc conversations set value [1]
scoreboard players set #spiced.vault_emma_npc.chatting spiced.dummy 0
scoreboard players set #spiced.vault_emma_npc.emma_turn spiced.dummy 0
summon mannequin 183 53 193 {Rotation:[180f, 0f], Tags:['summit.booth_entity.spiced', 'spiced.vault_emma_npc', 'spiced.vault_npc'],Invulnerable:1b,immovable:true,equipment:{offhand:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:portion_of_lettuce"}}},profile:{name:'vawlt'},hide_description:true}
summon mannequin 183 53 194 {Rotation:[80f, 0f], Tags:['summit.booth_entity.spiced', 'spiced.vault_emma_npc', 'spiced.emma_npc'],Invulnerable:1b,immovable:true,profile:{name:'emmasmithe'},hide_description:true}
summon interaction 183 53 193 { Tags:['summit.booth_entity.spiced', 'summit.static', 'spiced.vault_emma_npc.interaction', 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:vault_emma_npc/start_conversation', on_left_click: 'function spiced:vault_emma_npc/start_conversation', } } }
function spiced:vault_emma_npc/reset
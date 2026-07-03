# Generated with MC-Build

scoreboard players set #spiced.crypto_bro.chatting v 0
scoreboard players set #spiced.crypto_bro.mining_timer v 0
summon mannequin -22 69 234 {Rotation:[120f, 0f], Tags:['', 'summit.static', 'spiced.crypto_bro'],Invulnerable:1b,immovable:true,equipment:{head:{id:"minecraft:pufferfish",count:1,components:{"minecraft:item_model":"aj_booth:hard_hat"}},mainhand:{id:'minecraft:iron_pickaxe'}},profile:{texture:'aj_booth:item/crypto'},hide_description:true}
summon interaction -22 69 234 { Tags:['', 'summit.static', 'spiced.crypto_bro.interaction', 'summit.interactable'], width:1f, height:2f, response:true, data: { summit_interactable: { on_right_click: 'function spiced:crypto_bro/start_conversation', on_left_click: 'function spiced:crypto_bro/start_conversation', } } }
function spiced:crypto_bro/reset
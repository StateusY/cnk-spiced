# Generated with MC-Build

execute if score #spiced.vault_emma_npc.chatting spiced.dummy matches 1 run return 0
execute store result score #length spiced.dummy run data get storage spiced:vault_emma_npc conversation_order
execute if score #length spiced.dummy matches 0 run function spiced:vault_emma_npc/zzz/2
scoreboard players set #spiced.vault_emma_npc.chatting spiced.dummy 1
data modify storage spiced:temp args.conversation set from storage spiced:vault_emma_npc conversation_order[0]
data remove storage spiced:vault_emma_npc conversation_order[0]
function spiced:vault_emma_npc/zzz/3 with storage spiced:temp args
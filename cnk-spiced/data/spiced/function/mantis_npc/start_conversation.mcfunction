# Generated with MC-Build

execute if score #spiced.mantis_npc.chatting spiced.dummy matches 1 run return 0
execute store result score #length spiced.dummy run data get storage spiced:mantis_npc conversation_order
execute if score #length spiced.dummy matches 0 run function spiced:mantis_npc/zzz/4
scoreboard players set #spiced.mantis_npc.chatting spiced.dummy 1
data modify storage spiced:temp args.conversation set from storage spiced:mantis_npc conversation_order[0]
data remove storage spiced:mantis_npc conversation_order[0]
function spiced:mantis_npc/zzz/5 with storage spiced:temp args
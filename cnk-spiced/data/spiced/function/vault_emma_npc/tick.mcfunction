# Generated with MC-Build

execute if score #spiced.vault_emma_npc.chatting spiced.dummy matches 1 as @e[type=mannequin,tag=spiced.vault_npc,limit=1] at @s run rotate @s facing entity @p
execute if score #spiced.vault_emma_npc.chatting spiced.dummy matches 1 if score #spiced.vault_emma_npc.emma_turn spiced.dummy matches 1 as @e[type=mannequin,tag=spiced.emma_npc,limit=1] at @s run return run rotate @s facing entity @e[type=mannequin,tag=spiced.vault_npc,limit=1,distance=..5]
execute if score #spiced.vault_emma_npc.chatting spiced.dummy matches 1 as @e[type=mannequin,tag=spiced.emma_npc,limit=1] at @s run return run rotate @s facing entity @p
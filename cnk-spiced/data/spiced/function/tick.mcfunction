execute as @a[tag=summit.in_booth.spiced] at @s run function spiced:players

# block ticks
execute as @e[tag=spiced.mortar_and_pestle,type=minecraft:item_display] at @s run function spiced:mortar_and_pestle/tick
execute as @e[tag=spiced.cooking_pot,type=minecraft:item_display] at @s run function spiced:cooking_pot/tick
execute as @e[tag=spiced.mixing_bowl,type=minecraft:item_display] at @s run function spiced:mixing_bowl/tick
execute as @e[tag=spiced.cutting_board,type=minecraft:item_display] at @s run function spiced:cutting_board/tick

# npcs
function spiced:stateus_npc/tick
function spiced:pan_womsacz_npc/tick
function spiced:c4t_npc/tick
function spiced:mantis_npc/tick
function spiced:blue_npc/tick
function spiced:vault_emma_npc/tick
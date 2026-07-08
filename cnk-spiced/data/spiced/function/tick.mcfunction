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

# remove before integration

# execute positioned 199 53 176 as @a[distance=..1,gamemode=!creative,gamemode=!spectator] at @s run function spiced:bounds/cellar/exit
# execute positioned 223 57 180 as @a[distance=..3,gamemode=!creative,gamemode=!spectator] run function spiced:bounds/cellar/enter
# execute positioned 178 53 188 as @a[distance=..0.5,gamemode=!creative,gamemode=!spectator] at @s run function spiced:bounds/cellar/fountain/enter1
# execute positioned 176 53 185 as @a[distance=..0.5,gamemode=!creative,gamemode=!spectator] at @s run function spiced:bounds/cellar/fountain/exit1
# execute positioned 193 53 174 as @a[distance=..0.5,gamemode=!creative,gamemode=!spectator] at @s run function spiced:bounds/cellar/fountain/exit2

# execute positioned 217 66 184 as @a[distance=..3,gamemode=!creative,gamemode=!spectator, tag=!spiced.entered_booth] run function spiced:bounds/cabin/enter
# execute positioned 223 66 192 as @a[distance=..3,gamemode=!creative,gamemode=!spectator, tag=!spiced.entered_booth] run function spiced:bounds/cabin/enter

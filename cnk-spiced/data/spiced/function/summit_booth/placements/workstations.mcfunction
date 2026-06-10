# this function places all 4 workstations present in the cabin

execute positioned 220 67 190 run function spiced:mortar_and_pestle/place
execute positioned 220 66 189 run function spiced:cooking_pot/place

scoreboard players set $rotation spiced.dummy 0
data modify storage spiced:temp block.data set from block ~ ~ ~
execute positioned 220 67 188 run function spiced:cutting_board/place

scoreboard players set $rotation spiced.dummy -500
data modify storage spiced:temp block.data set from block ~ ~ ~
execute positioned 220 67 187 run function spiced:mixing_bowl/place
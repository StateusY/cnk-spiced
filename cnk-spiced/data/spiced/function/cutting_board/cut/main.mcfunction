#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players set $cut_check spiced.dummy 0
data modify storage spiced:temp cutting_board.item set from entity @s item

function spiced:cutting_board/cut/recipes

scoreboard players set $item_count spiced.dummy 0
execute on vehicle run scoreboard players operation $item_count spiced.dummy = @s spiced.item_count
execute if score $item_count spiced.dummy matches 1.. run return run function spiced:cutting_board/item/remove
swing @p[tag=spiced.interact_cutting_board,distance=..20] mainhand
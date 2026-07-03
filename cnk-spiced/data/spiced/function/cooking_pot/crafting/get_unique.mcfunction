#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

data remove storage spiced:temp unique_items_check[].count
data remove storage spiced:temp unique_items_check[].Slot

data modify storage spiced:temp unique_items set value {1:false, 2:false, 3:false, 4:false, 5:false}

data modify storage spiced:temp unique_items.1 set from storage spiced:temp unique_items_check[0]
data modify storage spiced:temp unique_items.2 set from storage spiced:temp unique_items_check[1]
data modify storage spiced:temp unique_items.3 set from storage spiced:temp unique_items_check[2]
data modify storage spiced:temp unique_items.4 set from storage spiced:temp unique_items_check[3]
data modify storage spiced:temp unique_items.5 set from storage spiced:temp unique_items_check[4]

function spiced:cooking_pot/crafting/get_unique_macro with storage spiced:temp unique_items
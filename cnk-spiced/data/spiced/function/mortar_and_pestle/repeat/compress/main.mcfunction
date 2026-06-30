#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

data remove storage spiced:temp mortar_and_pestle.compress
data remove storage spiced:temp compress

execute unless score $bowl_item_count spiced.dummy matches 1.. run return fail
data modify storage spiced:temp mortar_and_pestle.compress_index set value 0
data modify storage spiced:temp mortar_and_pestle.compress_item set from storage spiced:temp mortar_and_pestle.last_recipe[0]
data remove storage spiced:temp mortar_and_pestle.compress_item.count
function spiced:mortar_and_pestle/repeat/compress/macro with storage spiced:temp mortar_and_pestle

execute unless score $bowl_item_count spiced.dummy matches 2.. run return fail
data modify storage spiced:temp mortar_and_pestle.compress_index set value 1
data modify storage spiced:temp mortar_and_pestle.compress_item set from storage spiced:temp mortar_and_pestle.last_recipe[1]
data remove storage spiced:temp mortar_and_pestle.compress_item.count
function spiced:mortar_and_pestle/repeat/compress/macro with storage spiced:temp mortar_and_pestle

execute unless score $bowl_item_count spiced.dummy matches 3.. run return fail
data modify storage spiced:temp mortar_and_pestle.compress_index set value 2
data modify storage spiced:temp mortar_and_pestle.compress_item set from storage spiced:temp mortar_and_pestle.last_recipe[2]
data remove storage spiced:temp mortar_and_pestle.compress_item.count
function spiced:mortar_and_pestle/repeat/compress/macro with storage spiced:temp mortar_and_pestle

execute unless score $bowl_item_count spiced.dummy matches 4.. run return fail
data modify storage spiced:temp mortar_and_pestle.compress_index set value 3
data modify storage spiced:temp mortar_and_pestle.compress_item set from storage spiced:temp mortar_and_pestle.last_recipe[3]
data remove storage spiced:temp mortar_and_pestle.compress_item.count
function spiced:mortar_and_pestle/repeat/compress/macro with storage spiced:temp mortar_and_pestle
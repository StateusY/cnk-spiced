data remove storage spiced:temp mortar_and_pestle.compress

execute unless score $bowl_item_count spiced.dummy matches 1.. run return fail
data modify storage spiced:temp mortar_and_pestle.compress_index set value 0
data modify storage spiced:temp mortar_and_pestle.compress_item set from storage spiced:temp mortar_and_pestle.last_recipe[0]
function spiced:mortar_and_pestle/repeat/compress/macro with storage spiced:temp mortar_and_pestle

execute unless score $bowl_item_count spiced.dummy matches 2.. run return fail
data modify storage spiced:temp mortar_and_pestle.compress_index set value 1
data modify storage spiced:temp mortar_and_pestle.compress_item set from storage spiced:temp mortar_and_pestle.last_recipe[1]
function spiced:mortar_and_pestle/repeat/compress/macro with storage spiced:temp mortar_and_pestle

execute unless score $bowl_item_count spiced.dummy matches 3.. run return fail
data modify storage spiced:temp mortar_and_pestle.compress_index set value 2
data modify storage spiced:temp mortar_and_pestle.compress_item set from storage spiced:temp mortar_and_pestle.last_recipe[2]
function spiced:mortar_and_pestle/repeat/compress/macro with storage spiced:temp mortar_and_pestle

execute unless score $bowl_item_count spiced.dummy matches 4.. run return fail
data modify storage spiced:temp mortar_and_pestle.compress_index set value 3
data modify storage spiced:temp mortar_and_pestle.compress_item set from storage spiced:temp mortar_and_pestle.last_recipe[3]
function spiced:mortar_and_pestle/repeat/compress/macro with storage spiced:temp mortar_and_pestle

execute unless score $bowl_item_count spiced.dummy matches 5.. run return fail
data modify storage spiced:temp mortar_and_pestle.compress_index set value 4
data modify storage spiced:temp mortar_and_pestle.compress_item set from storage spiced:temp mortar_and_pestle.last_recipe[4]
function spiced:mortar_and_pestle/repeat/compress/macro with storage spiced:temp mortar_and_pestle
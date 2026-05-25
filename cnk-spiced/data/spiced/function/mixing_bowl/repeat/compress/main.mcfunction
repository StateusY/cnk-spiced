data remove storage spiced:temp mixing_bowl.compress

execute unless score $bowl_item_count spiced.dummy matches 1.. run return fail
data modify storage spiced:temp mixing_bowl.compress_index set value 0
data modify storage spiced:temp mixing_bowl.compress_item set from storage spiced:temp mixing_bowl.last_recipe[0]
function spiced:mixing_bowl/repeat/compress/macro with storage spiced:temp mixing_bowl

execute unless score $bowl_item_count spiced.dummy matches 2.. run return fail
data modify storage spiced:temp mixing_bowl.compress_index set value 1
data modify storage spiced:temp mixing_bowl.compress_item set from storage spiced:temp mixing_bowl.last_recipe[1]
function spiced:mixing_bowl/repeat/compress/macro with storage spiced:temp mixing_bowl

execute unless score $bowl_item_count spiced.dummy matches 3.. run return fail
data modify storage spiced:temp mixing_bowl.compress_index set value 2
data modify storage spiced:temp mixing_bowl.compress_item set from storage spiced:temp mixing_bowl.last_recipe[2]
function spiced:mixing_bowl/repeat/compress/macro with storage spiced:temp mixing_bowl

execute unless score $bowl_item_count spiced.dummy matches 4.. run return fail
data modify storage spiced:temp mixing_bowl.compress_index set value 3
data modify storage spiced:temp mixing_bowl.compress_item set from storage spiced:temp mixing_bowl.last_recipe[3]
function spiced:mixing_bowl/repeat/compress/macro with storage spiced:temp mixing_bowl
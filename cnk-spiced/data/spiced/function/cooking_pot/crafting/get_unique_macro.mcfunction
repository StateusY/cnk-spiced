#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

$execute unless data storage spiced:temp unique_items{1:false} run data modify storage spiced:temp unique_items.list.'$(1)' set value true
$execute unless data storage spiced:temp unique_items{2:false} run data modify storage spiced:temp unique_items.list.'$(2)' set value true
$execute unless data storage spiced:temp unique_items{3:false} run data modify storage spiced:temp unique_items.list.'$(3)' set value true
$execute unless data storage spiced:temp unique_items{4:false} run data modify storage spiced:temp unique_items.list.'$(4)' set value true
$execute unless data storage spiced:temp unique_items{5:false} run data modify storage spiced:temp unique_items.list.'$(5)' set value true

execute store result score $unique_items spiced.dummy run data get storage spiced:temp unique_items.list
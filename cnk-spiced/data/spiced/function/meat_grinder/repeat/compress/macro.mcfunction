$execute if data storage spiced:temp compress.'$(compress_item)' store result score $count spiced.dummy run data get storage spiced:temp meat_grinder.compress[$(compress_item)].count
$execute if data storage spiced:temp compress.'$(compress_item)' store result storage spiced:temp meat_grinder.compress[$(compress_item)].count int 1 run return run scoreboard players add $count spiced.dummy 1

$data modify storage spiced:temp compress.'$(compress_item)' set value 1
$data modify storage spiced:temp meat_grinder.compress append from storage spiced:temp meat_grinder.last_recipe[$(compress_index)]
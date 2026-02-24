$execute if data storage cnk:temp compress.'$(compress_item)' store result score $count cnk.dummy run data get storage cnk:temp meat_grinder.compress[$(compress_item)].count
$execute if data storage cnk:temp compress.'$(compress_item)' store result storage cnk:temp meat_grinder.compress[$(compress_item)].count int 1 run return run scoreboard players add $count cnk.dummy 1

$data modify storage cnk:temp compress.'$(compress_item)' set value 1
$data modify storage cnk:temp meat_grinder.compress append from storage cnk:temp meat_grinder.last_recipe[$(compress_index)]
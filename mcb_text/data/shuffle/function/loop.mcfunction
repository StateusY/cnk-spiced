# Generated with MC-Build

execute store result storage shuffle:data args.max int 1 store result score #max v run data get storage shuffle:data list
execute if score #max v matches ..1 run return run data modify storage shuffle:data shuffled append from storage shuffle:data list[0]
function shuffle:loop/pick_random_index with storage shuffle:data args
function shuffle:loop/append_index with storage shuffle:data args
execute if score #max v matches 1.. run function shuffle:loop
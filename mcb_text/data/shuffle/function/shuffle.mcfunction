# Generated with MC-Build

#ARGS: {source: String, target: String}
$data modify storage shuffle:data list set from $(source)
data modify storage shuffle:data shuffled set value []
function shuffle:loop
$data modify $(target) set from storage shuffle:data shuffled
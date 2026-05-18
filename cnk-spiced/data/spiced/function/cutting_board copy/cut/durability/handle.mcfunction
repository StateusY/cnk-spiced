execute if entity @s[predicate=spiced:unbreaking/mainhand/all] if function spiced:cutting_board/cut/durability/unbreaking run return fail
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{spiced:{knife:true}}] run return fail

#handle damage
data modify storage spiced:temp knife.components set from entity @s SelectedItem.components

scoreboard players set $damage spiced.dummy 0
execute store result score $damage spiced.dummy run data get storage spiced:temp knife.components."minecraft:damage"
scoreboard players add $damage spiced.dummy 1

scoreboard players set $max_damage spiced.dummy 0
execute store result score $max_damage spiced.dummy run data get storage spiced:temp knife.components."minecraft:max_damage"

execute store result storage spiced:temp knife.damage int 1 run scoreboard players get $damage spiced.dummy

function spiced:cutting_board/cut/durability/apply with storage spiced:temp knife
execute if score $damage spiced.dummy >= $max_damage spiced.dummy run function spiced:cutting_board/cut/durability/break
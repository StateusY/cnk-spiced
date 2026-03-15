scoreboard players set @s cnk.use_cooldown 3

data remove storage cnk.iris:settings Callback
data merge storage cnk.iris:settings {TargetEntities:false,Whitelist:"minecraft:farmland",MaxRecursionDepth:16,Blacklist:"#cnk:cropcast"}

execute if items entity @s weapon.offhand *[minecraft:custom_data~{spiced:{seed:true}}] run data modify storage cnk:temp seeds.hand set value "offhand"
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{spiced:{seed:true}}] run data modify storage cnk:temp seeds.hand set value "mainhand"

execute store result score $max_distance cnk.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance cnk.dummy run function cnk.iris:get_target
execute if score $distance cnk.dummy <= $max_distance cnk.dummy at @n[type=minecraft:marker, tag=cnk.iris.targeted_block] positioned ~ ~1 ~ run function spiced:seeds/macro with storage cnk:temp seeds
execute if score $hit_meat_grinder_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=spiced.hit_meat_grinder] run scoreboard players set $hit_meat_grinder_check cnk.dummy 1
execute if score $hit_meat_grinder_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_meat_grinder_check cnk.dummy matches 1 on vehicle unless entity @s[tag=spiced.grinding] on passengers if entity @s[type=minecraft:item_display,tag=spiced.meat_grinder_item] on vehicle run return run function spiced:meat_grinder/hit/remove_last
execute if score $hit_meat_grinder_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_meat_grinder_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 1 2
execute if score $hit_meat_grinder_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:stone"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 5
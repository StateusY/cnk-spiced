execute store result score $count cnk.dummy run data get entity @s equipment.chest.components."minecraft:custom_model_data".floats[0]

execute if score $count cnk.dummy matches 1 if items entity @p[tag=spiced.c4t_interact] weapon.mainhand minecraft:wheat run function spiced:c4t/interact/feed
execute if score $count cnk.dummy matches 3 run function spiced:c4t/interact/harvest
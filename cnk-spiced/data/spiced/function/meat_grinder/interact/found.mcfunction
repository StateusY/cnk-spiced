data remove entity @s interaction

execute on vehicle if entity @s[tag=spiced.grinding] run return fail

execute if entity @p[tag=spiced.interact_meat_grinder,predicate=cnk:sneaking] on vehicle on passengers if entity @s[type=minecraft:item_display,tag=spiced.meat_grinder_item] on vehicle at @s run return run function spiced:meat_grinder/item/clear
execute if entity @p[tag=spiced.interact_meat_grinder,predicate=cnk:sneaking] on vehicle if data entity @s item.components."minecraft:custom_data".cnk.last_recipe run return run function spiced:meat_grinder/repeat/main
execute unless items entity @p[tag=spiced.interact_meat_grinder] weapon.mainhand * on vehicle on passengers if entity @s[type=minecraft:item_display,tag=spiced.meat_grinder_item] on vehicle at @s run return run function spiced:meat_grinder/grind/main
execute if items entity @p[tag=spiced.interact_meat_grinder] weapon.mainhand * on vehicle at @s run return run function spiced:meat_grinder/item/main
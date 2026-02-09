data remove entity @s interaction

execute on vehicle if entity @s[tag=spiced.preparing] run return fail

execute if entity @p[tag=spiced.interact_preparation_plate,predicate=cnk:sneaking] on vehicle on passengers if entity @s[type=minecraft:item_display,tag=spiced.preparation_plate_item] on vehicle at @s run return run function spiced:preparation_plate/item/clear
execute if entity @p[tag=spiced.interact_preparation_plate,predicate=cnk:sneaking] on vehicle if data entity @s item.components."minecraft:custom_data".cnk.last_recipe run return run function spiced:preparation_plate/repeat/main
execute unless items entity @p[tag=spiced.interact_preparation_plate] weapon.mainhand * on vehicle on passengers if entity @s[type=minecraft:item_display,tag=spiced.preparation_plate_item] on vehicle at @s run return run function spiced:preparation_plate/prepare/main
execute if items entity @p[tag=spiced.interact_preparation_plate] weapon.mainhand * on vehicle at @s run return run function spiced:preparation_plate/item/main
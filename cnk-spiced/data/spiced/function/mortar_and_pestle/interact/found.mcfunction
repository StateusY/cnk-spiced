data remove entity @s interaction

execute on vehicle if entity @s[tag=spiced.mashing] run return fail

execute if entity @p[tag=spiced.interact_mortar_and_pestle,predicate=cnk:sneaking] on vehicle on passengers if entity @s[type=minecraft:item_display,tag=spiced.mortar_and_pestle_item] on vehicle at @s run return run function spiced:mortar_and_pestle/item/clear
execute if entity @p[tag=spiced.interact_mortar_and_pestle,predicate=cnk:sneaking] on vehicle if data entity @s item.components."minecraft:custom_data".cnk.last_recipe run return run function spiced:mortar_and_pestle/repeat/main
execute unless items entity @p[tag=spiced.interact_mortar_and_pestle] weapon.mainhand * on vehicle on passengers if entity @s[type=minecraft:item_display,tag=spiced.mortar_and_pestle_item] on vehicle at @s run return run function spiced:mortar_and_pestle/mash/main
execute if items entity @p[tag=spiced.interact_mortar_and_pestle] weapon.mainhand * on vehicle at @s run return run function spiced:mortar_and_pestle/item/main
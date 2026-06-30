execute if entity @s[tag=spiced.mixing] run return fail

execute if entity @p[tag=spiced.interact_mixing_bowl,predicate=spiced:sneaking] on passengers if entity @s[type=minecraft:item_display,tag=spiced.mixing_bowl_item] on vehicle run return run function spiced:mixing_bowl/item/clear
execute if entity @p[tag=spiced.interact_mixing_bowl,predicate=spiced:sneaking] if data entity @s item.components."minecraft:custom_data".spiced.last_recipe run return run function spiced:mixing_bowl/repeat/main
execute unless items entity @p[tag=spiced.interact_mixing_bowl,distance=..20] weapon.mainhand * on passengers if entity @s[type=minecraft:item_display,tag=spiced.mixing_bowl_item] on vehicle run return run function spiced:mixing_bowl/mix/main
execute if items entity @p[tag=spiced.interact_mixing_bowl,distance=..20] weapon.mainhand * run return run function spiced:mixing_bowl/item/main
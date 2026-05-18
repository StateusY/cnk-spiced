swing @p[tag=spiced.interact_mixing_bowl,distance=..20] mainhand
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.mixing_bowl_item] run function spiced:mixing_bowl/item/remove
scoreboard players set @s spiced.item_count 0
swing @p[tag=spiced.interact_mortar_and_pestle,distance=..20] mainhand
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.mortar_and_pestle_item] run function spiced:mortar_and_pestle/item/remove
scoreboard players set @s spiced.item_count 0
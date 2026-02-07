execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.mortar_and_pestle_item] if data entity @s item.components run function spiced:mortar_and_pestle/item/item_macro_components with entity @s item
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.mortar_and_pestle_item] unless data entity @s item.components run function spiced:mortar_and_pestle/item/item_macro with entity @s item
execute on passengers run kill @s
kill @s

playsound block.bamboo_wood.break block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:spruce_planks"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 20

loot spawn ~ ~ ~ loot spiced:tools/mortar_and_pestle
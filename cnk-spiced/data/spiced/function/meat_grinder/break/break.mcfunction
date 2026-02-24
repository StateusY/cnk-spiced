execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.meat_grinder_item] if data entity @s item.components run function spiced:meat_grinder/item/item_macro_components with entity @s item
execute on passengers if entity @s[type=minecraft:item_display,tag=spiced.meat_grinder_item] unless data entity @s item.components run function spiced:meat_grinder/item/item_macro with entity @s item
execute on passengers run kill @s
kill @s

setblock ~ ~ ~ minecraft:air replace
playsound block.bamboo_wood.break block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:iron_block"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 20

loot spawn ~ ~ ~ loot spiced:tools/meat_grinder
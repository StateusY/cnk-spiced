playsound minecraft:block.bamboo_wood.step block @a[tag=summit.in_booth.spiced] ~ ~ ~ 1 2
execute as @p[tag=spiced.interact_mortar_and_pestle,distance=..20] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 1
execute if data entity @s item.components run function spiced:mortar_and_pestle/item/item_macro_components with entity @s item
execute unless data entity @s item.components run function spiced:mortar_and_pestle/item/item_macro with entity @s item
kill @s
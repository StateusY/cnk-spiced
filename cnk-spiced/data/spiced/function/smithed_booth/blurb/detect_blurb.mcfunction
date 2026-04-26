data remove storage iris:settings Whitelist
data modify storage iris:settings TargetEntities set value true

execute as @s at @s anchored eyes positioned ^ ^ ^ run function iris:get_target
execute if entity @e[type=item_display, tag=iris.targeted_entity, tag=spiced_booth.blurb] run title @s actionbar {nbt:"item.components.minecraft:lore",entity:"@n[type=item_display, tag=iris.targeted_entity, tag=spiced_booth.blurb]",interpret:true}

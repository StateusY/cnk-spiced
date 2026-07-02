advancement revoke @s only spiced:interact_cooking_pot
data remove storage spiced.iris:settings Callback
data merge storage spiced.iris:settings {TargetEntities: false, Whitelist: "minecraft:hopper", MaxRecursionDepth: 16, Blacklist: "#spiced.iris:shape_groups/air"}
execute store result score $max_distance spiced.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance spiced.dummy run function spiced.iris:get_target
execute if score $distance spiced.dummy <= $max_distance spiced.dummy at @n[type=minecraft:marker, tag=spiced.iris.targeted_block] if entity @n[type=minecraft:item_display, tag=spiced.cooking_pot, distance=..0.1] run function spiced:cooking_pot/interact/store

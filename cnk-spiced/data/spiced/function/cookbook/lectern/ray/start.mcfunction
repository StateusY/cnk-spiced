scoreboard players set $distance spiced.dummy 0

#store reach
execute store result score $reach spiced.dummy run attribute @s minecraft:block_interaction_range get 100

execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function spiced:cookbook/lectern/ray/ray
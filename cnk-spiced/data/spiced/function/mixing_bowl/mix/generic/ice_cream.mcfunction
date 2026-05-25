scoreboard players set $ice_cream_count spiced.dummy 0

execute store result score $ice_cream_count spiced.dummy run data remove storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"ice_cream"}}}}}]

return 1
#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players set $water_count spiced.dummy 0

execute if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:water_bucket"}] run scoreboard players add $water_count spiced.dummy 1
execute if data storage spiced:temp mixing_bowl.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] run scoreboard players add $water_count spiced.dummy 1
execute if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"water_bottle"}}}}}] run scoreboard players add $water_count spiced.dummy 1
execute if data storage spiced:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{spiced:{pail:{liquid:"water"}}}}}] run scoreboard players add $water_count spiced.dummy 1

return 1
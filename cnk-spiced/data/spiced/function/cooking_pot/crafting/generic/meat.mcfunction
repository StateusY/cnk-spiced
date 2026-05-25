#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players set $meat_count spiced.dummy 0

execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"pork_cutlets"}}}}}] run scoreboard players add $meat_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"beef_cutlets"}}}}}] run scoreboard players add $meat_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"chicken_cutlets"}}}}}] run scoreboard players add $meat_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"mutton_cutlets"}}}}}] run scoreboard players add $meat_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"rabbit_cutlets"}}}}}] run scoreboard players add $meat_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:porkchop"}] run scoreboard players add $meat_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:beef"}] run scoreboard players add $meat_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:chicken"}] run scoreboard players add $meat_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:mutton"}] run scoreboard players add $meat_count spiced.dummy 1
execute if data storage spiced:temp cooking_pot.Items[{id:"minecraft:rabbit"}] run scoreboard players add $meat_count spiced.dummy 1

return 1
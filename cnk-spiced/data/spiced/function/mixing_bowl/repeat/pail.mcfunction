#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

scoreboard players reset $quantity spiced.dummy
execute store result score $quantity spiced.dummy run data get storage spiced:temp mixing_bowl.last_recipe[{components:{"minecraft:custom_data":{spiced:{block:{type:"pail"}}}}}].components."minecraft:custom_data".spiced.pail.quantity

execute unless score $quantity spiced.dummy matches 1.. run return fail
execute store result storage spiced:temp mixing_bowl.last_recipe[{components:{"minecraft:custom_data":{spiced:{block:{type:"pail"}}}}}].components."minecraft:custom_data".spiced.pail.quantity int 1 run scoreboard players remove $quantity spiced.dummy 1
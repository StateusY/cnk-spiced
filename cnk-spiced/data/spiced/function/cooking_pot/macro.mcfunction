#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

$summon item_display ~ ~0.5 ~ {Tags:["spiced.cooking_pot","spiced.block","smithed.strict"$(extra_tags)],transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.002f,1.002f,1.002f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:barrier",components:{"minecraft:item_name":$(item_name),"minecraft:item_model":"$(model)","minecraft:custom_data":{"$jade:stack":{"id":"$(model)"}},"minecraft:custom_model_data":{flags:[false]}}},Rotation:[$(rotation),0.0]}
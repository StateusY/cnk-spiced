#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags:["spiced.cooking_pot","summit.dynamic","summit.booth_entity.spiced"],transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.002f,1.002f,1.002f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_name":{"translate":"item.spiced.cooking_pot","fallback":"Cooking Pot"},"minecraft:item_model":"spiced:cooking_pot","minecraft:custom_data":{"$jade:stack":{"id":"spiced:cooking_pot"}},"minecraft:custom_model_data":{flags:[false]}}},Rotation:[0.0,0.0]}
setblock ~ ~ ~ minecraft:hopper[facing=down,enabled=false]{CustomName:{translate:gui.spiced.cooking_pot,font:"spiced:gui",color:"white"},TransferCooldown:2147483647} replace
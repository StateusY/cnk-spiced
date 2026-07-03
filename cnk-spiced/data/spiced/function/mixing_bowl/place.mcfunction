#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags:["spiced.mixing_bowl","summit.static","summit.booth_entity.spiced"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:mixing_bowl"}},Rotation:[0.0,0.0],Passengers:\
    [\
        {id:"minecraft:interaction",Tags:["spiced.mixing_bowl_interaction","summit.interactable","summit.static","summit.booth_entity.spiced"],height:-0.5625,width:0.77,data:{summit_interactable: {on_right_click:"function spiced:mixing_bowl/interact/on_interaction",on_left_click:"function spiced:mixing_bowl/hit/on_interaction"}}}, \
        {id:"minecraft:item_display",Tags:["spiced.mixing_bowl_spoon","summit.dynamic","summit.booth_entity.spiced"],transformation:{left_rotation:[-0.2f,0f,0f,1f],right_rotation:[0f,0f,2f,1f],scale:[0.7f,0.7f,0.7f],translation:[0.0f,-0.1f,-0.3f]},item:{id:"minecraft:wooden_shovel",count:1,components:{"minecraft:item_model":"spiced:mixing_bowl_spoon"}},Rotation:[0.0,0.0],interpolation_duration:6,teleport_duration:6}\
    ]}
#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute align xyz run summon item_display ~0.5 ~ ~0.5 {Tags:["spiced.cutting_board","summit.static","summit.booth_entity.spiced"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f],translation:[0.0f,0.5f,0.0f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:cutting_board"}},Rotation:[0.0,0.0],Passengers:\
    [\
        {id:"minecraft:interaction",Tags:["spiced.cutting_board_interaction","summit.interactable","summit.static","summit.booth_entity.spiced"],height:0.4,width:0.9,data:{summit_interactable: {on_right_click:"function spiced:cutting_board/interact/on_interaction",on_left_click:"function spiced:cutting_board/hit/on_interaction"}}}\
    ]}
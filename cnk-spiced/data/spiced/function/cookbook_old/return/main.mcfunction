#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if score @s spiced.cookbook_previous_page matches 1.. run data modify storage spiced:temp cookbook.data.return set value "book.spiced.return.active.icon,'hover_event':{'action':'show_text','value':{'text':'Return'}},'click_event':{'action':'run_command','command':'trigger spiced.cookbook_buttons set 9931'}"
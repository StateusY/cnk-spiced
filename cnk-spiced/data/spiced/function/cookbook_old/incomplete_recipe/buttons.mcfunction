#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute unless score @s spiced.previous_incomplete_recipe matches -1 run data modify storage spiced:temp cookbook.data.previous_incomplete_recipe set value "book.spiced.previous_incomplete_recipe,'hover_event':{'action':'show_text','value':{'text':'Previous undiscovered recipe'}},'click_event':{'action':'run_command','command':'trigger spiced.cookbook_buttons set 9903'}"
execute unless score @s spiced.next_incomplete_recipe matches -1 run data modify storage spiced:temp cookbook.data.next_incomplete_recipe set value "book.spiced.next_incomplete_recipe,'hover_event':{'action':'show_text','value':{'text':'Next undiscovered recipe'}},'click_event':{'action':'run_command','command':'trigger spiced.cookbook_buttons set 9904'}"
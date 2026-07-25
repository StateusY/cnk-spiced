#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

$execute if data storage spiced:cookbook page_lookup."$(id)" run data modify storage spiced:temp cookbook.ingredient.output set value "{'translate':book.spiced.ingredient_template,with:[{'translate':book.$(flag),'font':'$(font)'}],'hover_event':{'action':'show_text','value':[{'translate':$(flag)},{'translate':book.spiced.hyperlink,'font':'spiced:icons'}]},'click_event':{'action':'run_command','command':'trigger spiced.cookbook_buttons set 991$(position)'}},"
$execute unless data storage spiced:cookbook page_lookup."$(id)" run data modify storage spiced:temp cookbook.ingredient.output set value "{'translate':book.spiced.ingredient_template,with:[{'translate':book.$(flag),'font':'$(font)'}],'hover_event':{'action':'show_text','value':[{'translate':$(flag)}]}},"
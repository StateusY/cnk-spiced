#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

function spiced:cookbook/database/set/main {flag:'item.spiced.stock'}
execute if score $set_success spiced.dummy matches 0 run return run advancement revoke @s only spiced:cookbook/stock/item
advancement grant @s[tag=!spiced.cookbook_unlock,tag=!spiced.no_toasts] only spiced:cookbook/stock/toast

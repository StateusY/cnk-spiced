# for comprehensive comments, see the pumpkin pie grant function
function cnk:cookbook/database/set/main {flag:"item.spiced.pan_of_lettuce"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only spiced:cookbook/pan_of_lettuce/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only spiced:cookbook/pan_of_lettuce/toast
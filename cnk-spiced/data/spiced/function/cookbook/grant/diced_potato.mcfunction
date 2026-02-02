# for comprehensive comments, see the pumpkin pie grant function
function cnk:cookbook/database/set/main {flag:"item.spiced.diced_potato"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only spiced:cookbook/diced_potato/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only spiced:cookbook/diced_potato/toast
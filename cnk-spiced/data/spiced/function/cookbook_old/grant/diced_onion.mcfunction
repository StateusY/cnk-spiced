# for comprehensive comments, see the pumpkin pie grant function
function spiced:cookbook/database/set/main {flag:"item.spiced.diced_onion"}
execute unless score $set_success spiced.dummy matches 1 run return run advancement revoke @s only spiced:cookbook/diced_onion/item

advancement grant @s[tag=!spiced.cookbook_unlock,tag=!spiced.no_toasts] only spiced:cookbook/diced_onion/toast
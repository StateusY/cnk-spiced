function cnk:cookbook/database/set/main {flag:"item.spiced.any_grease"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only spiced:cookbook/any_grease/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only spiced:cookbook/any_grease/toast

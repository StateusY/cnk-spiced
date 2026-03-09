function cnk:cookbook/database/set/main {flag:"item.spiced.any_pepper"}
execute unless score $set_success cnk.dummy matches 1 run return run advancement revoke @s only spiced:cookbook/any_pepper/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only spiced:cookbook/any_pepper/toast

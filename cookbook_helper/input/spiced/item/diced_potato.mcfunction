function cnk:cookbook/database/set/main {flag:"item.spiced./home/stateus/Documents/GitHub/cnk-spiced/cookbook_helper/input/spiced/item/diced_potato"}
execute if score $set_success cnk.dummy matches 0 run return run advancement revoke @s only cnk:cookbook//home/stateus/Documents/GitHub/cnk-spiced/cookbook_helper/input/spiced/item/diced_potato/item

advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnk:cookbook//home/stateus/Documents/GitHub/cnk-spiced/cookbook_helper/input/spiced/item/diced_potato/toast
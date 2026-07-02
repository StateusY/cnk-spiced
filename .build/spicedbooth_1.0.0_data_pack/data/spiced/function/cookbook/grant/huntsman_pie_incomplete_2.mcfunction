function spiced:cookbook/database/set/main {flag: "item.spiced.huntsman_pie_incomplete_2"}
execute unless score $set_success spiced.dummy matches 1 run return run advancement revoke @s only spiced:cookbook/huntsman_pie_incomplete_2/item
advancement grant @s[tag=!spiced.cookbook_unlock, tag=!spiced.no_toasts] only spiced:cookbook/huntsman_pie_incomplete_2/toast

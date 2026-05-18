function spiced:cookbook/database/set/main {flag:"block.minecraft.sunflower"}
execute unless score $set_success spiced.dummy matches 1 run return run advancement revoke @s only spiced:cookbook/sunflower/item

advancement grant @s[tag=!spiced.cookbook_unlock,tag=!spiced.no_toasts] only spiced:cookbook/sunflower/toast

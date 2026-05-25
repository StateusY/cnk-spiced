# for comprehensive comments, see the pumpkin pie grant function
function spiced:cookbook/database/set/main {flag:"item.minecraft.glass_bottle"}
execute unless score $set_success spiced.dummy matches 1 run return run advancement revoke @s only spiced:cookbook/glass_bottle/item

advancement grant @s[tag=!spiced.cookbook_unlock,tag=!spiced.no_toasts] only spiced:cookbook/glass_bottle/toast
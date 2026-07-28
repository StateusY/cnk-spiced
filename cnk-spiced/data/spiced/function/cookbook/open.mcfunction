
#ensure trigger is enabled
scoreboard players enable @s spiced.cookbook_buttons
scoreboard players enable @s spiced.cookbook_references

#setup clean storage
data remove storage spiced:temp cookbook
data modify storage spiced:temp cookbook.return set value "book.spiced.return.inactive.icon"

execute at @s run playsound item.book.page_turn neutral @s ~ ~ ~ 1 1

#make sure current page is set to something
execute unless score @s spiced.cookbook_current_page matches 1.. run scoreboard players set @s spiced.cookbook_current_page 1

#min max
execute if score @s spiced.cookbook_current_page matches ..0 run scoreboard players set @s spiced.cookbook_current_page 1
execute if score @s spiced.cookbook_current_page >= $global_cookbook_page spiced.dummy run scoreboard players operation @s spiced.cookbook_current_page = $global_cookbook_page spiced.dummy
execute if score @s spiced.cookbook_current_page = $global_cookbook_page spiced.dummy run scoreboard players remove @s spiced.cookbook_current_page 1

#store number length for alignment
execute if score @s spiced.cookbook_current_page matches 1..9 run data modify storage spiced:temp cookbook.page_number_width set value "single"
execute if score @s spiced.cookbook_current_page matches 10..99 run data modify storage spiced:temp cookbook.page_number_width set value "double"
execute if score @s spiced.cookbook_current_page matches 100.. run data modify storage spiced:temp cookbook.page_number_width set value "triple"

#handle jump back
execute if score @s spiced.cookbook_previous_page matches 1.. run data modify storage spiced:temp cookbook.return set value "book.spiced.return.active.icon,'hover_event':{'action':'show_text','value':{'translate':book.spiced.return.active.text}},'click_event':{'action':'run_command','command':'trigger spiced.cookbook_buttons set 9931'}"

#open page
execute store result storage spiced:temp cookbook.current_page int 1 run scoreboard players get @s spiced.cookbook_current_page
function spiced:cookbook/get_page with storage spiced:temp cookbook

function spiced:cookbook/open_page with storage spiced:temp cookbook
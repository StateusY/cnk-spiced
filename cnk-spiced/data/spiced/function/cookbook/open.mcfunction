#ensure trigger is enabled
scoreboard players enable @s cnk.cookbook_buttons
scoreboard players enable @s cnk.cookbook_references

#setup clean storage
data remove storage cnk:temp cookbook
data modify storage cnk:temp cookbook.return set value "book.cnk.return.inactive.icon"

execute at @s run playsound item.book.page_turn neutral @s ~ ~ ~ 1 1

#make sure current page is set to something
execute unless score @s cnk.cookbook_current_page matches 1.. run scoreboard players set @s cnk.cookbook_current_page 1

#min max
execute if score @s cnk.cookbook_current_page matches ..0 run scoreboard players set @s cnk.cookbook_current_page 1
execute if score @s cnk.cookbook_current_page >= $global_cookbook_page cnk.dummy run scoreboard players operation @s cnk.cookbook_current_page = $global_cookbook_page cnk.dummy
execute if score @s cnk.cookbook_current_page = $global_cookbook_page cnk.dummy run scoreboard players remove @s cnk.cookbook_current_page 1

#store number length for alignment
execute if score @s cnk.cookbook_current_page matches 1..9 run data modify storage cnk:temp cookbook.page_number_width set value "single"
execute if score @s cnk.cookbook_current_page matches 10..99 run data modify storage cnk:temp cookbook.page_number_width set value "double"
execute if score @s cnk.cookbook_current_page matches 100.. run data modify storage cnk:temp cookbook.page_number_width set value "triple"

#handle jump back
execute if score @s cnk.cookbook_previous_page matches 1.. run data modify storage cnk:temp cookbook.return set value "book.cnk.return.active.icon,'hover_event':{'action':'show_text','value':{'translate':book.cnk.return.active.text}},'click_event':{'action':'run_command','command':'trigger cnk.cookbook_buttons set 9931'}"

#open page
execute store result storage cnk:temp cookbook.current_page int 1 run scoreboard players get @s cnk.cookbook_current_page
function cnk:cookbook/get_page with storage cnk:temp cookbook
function cnk:cookbook/open_page with storage cnk:temp cookbook
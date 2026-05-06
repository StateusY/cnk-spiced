#ensure trigger is enabled
scoreboard players enable @s spiced.cookbook_buttons

#remove tag
tag @s[tag=spiced.on_incomplete_page] remove spiced.on_incomplete_page

#do dcf
function dcf:open

#setup clean storage
data remove storage spiced:temp cookbook
data merge storage spiced:temp { \
    cookbook: { \
        data: { \
            source_key:"cnk.no_source", \
            source_font:"cnk:book:base", \
            tool_font:"cnk.book:base", \
            front_state: "idle", \
            staple_state: "idle", \
            snack_state: "idle", \
            light_state: "idle", \
            hearty_state: "idle", \
            feast_state: "idle", \
            dessert_state: "idle", \
            page_name: "item.cnk.unknown", \
            recipe_icon_font: "cnk.book:base", \
            slot_1: "item.cnk.unknown", \
            font_1: "cnk.book:base", \
            slot_2: "item.cnk.unknown", \
            font_2: "cnk.book:base", \
            slot_3: "item.cnk.unknown", \
            font_3: "cnk.book:base", \
            slot_4: "item.cnk.unknown", \
            font_4: "cnk.book:base", \
            slot_5: "item.cnk.unknown", \
            font_5: "cnk.book:base", \
            slot_6: "item.cnk.unknown", \
            font_6: "cnk.book:base", \
            slot_7: "item.cnk.unknown", \
            font_7: "cnk.book:base", \
            stamp: "book.cnk.stamp.none", \
            return: "book.cnk.return.inactive.icon", \
            lectern_button:",", \
            button_width: 211, \
            previous_incomplete_recipe: "book.cnk.empty_incomplete_recipe", \
            next_incomplete_recipe: "book.cnk.empty_incomplete_recipe" \
        } \
    } \
}

#get player data
execute unless function spiced:cookbook/database/get/main run return fail

execute at @s run playsound item.book.page_turn neutral @s ~ ~ ~ 1 1

#set section states
function spiced:cookbook/set_section_states

#make sure current page is set to something
execute unless score @s spiced.cookbook_current_page matches 1.. run scoreboard players set @s spiced.cookbook_current_page 1

#min max
execute if score @s spiced.cookbook_current_page matches ..0 run scoreboard players set @s spiced.cookbook_current_page 1
execute if score @s spiced.cookbook_current_page >= $global_cookbook_page spiced.dummy run scoreboard players operation @s spiced.cookbook_current_page = $global_cookbook_page spiced.dummy
execute if score @s spiced.cookbook_current_page = $global_cookbook_page spiced.dummy run scoreboard players remove @s spiced.cookbook_current_page 1

#store number length for alignment
execute if score @s spiced.cookbook_current_page matches 1..9 run data modify storage spiced:temp cookbook.data.page_number_width set value "single"
execute if score @s spiced.cookbook_current_page matches 10..99 run data modify storage spiced:temp cookbook.data.page_number_width set value "double"
execute if score @s spiced.cookbook_current_page matches 100.. run data modify storage spiced:temp cookbook.data.page_number_width set value "triple"

#get page
execute store result storage spiced:temp cookbook.data.current_page int 1 run scoreboard players get @s spiced.cookbook_current_page
function spiced:cookbook/get_page with storage spiced:temp cookbook.data

scoreboard players set $ingredient_count spiced.dummy 0
execute store result score $ingredient_count spiced.dummy run data get storage spiced:temp cookbook.current_page.ingredients

#resolve ingredient flags
execute unless score $ingredient_count spiced.dummy matches 0 run function spiced:cookbook/resolve_ingredients

#copy some data
data modify storage spiced:temp cookbook.data.tool set from storage spiced:temp cookbook.current_page.tool
data modify storage spiced:temp cookbook.data.icon_font set from storage spiced:temp cookbook.current_page.icon_font
execute store result storage spiced:temp cookbook.data.ingredient_count int 1 run scoreboard players get $ingredient_count spiced.dummy

#handle source indicator
data modify storage spiced:temp cookbook.data.source_key set from storage spiced:temp cookbook.current_page.source.key
data modify storage spiced:temp cookbook.data.source_font set from storage spiced:temp cookbook.current_page.source.font

#handle tool font
data modify storage spiced:temp cookbook.data.tool_font set from storage spiced:temp cookbook.current_page.tool_font

#handle stamp
function spiced:cookbook/stamp/main

#handle jump back
function spiced:cookbook/return/main

#handle lectern button
execute if entity @s[tag=spiced.via_lectern] run function spiced:cookbook/lectern_button

#next/previous incomplete recipe stuff
function spiced:cookbook/incomplete_recipe/main
function spiced:cookbook/incomplete_recipe/buttons

#check for dialog function
execute if data storage spiced:temp cookbook.current_page.dialog_function run return run function spiced:cookbook/open_page with storage spiced:temp cookbook.current_page

#no dialog function, build page
function spiced:cookbook/builder/build_page
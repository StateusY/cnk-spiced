# cnk-spiced
A small Crop and Kettle addon, with a few more recipes and ingredients.

HEY! This is an addon datapack! It will do nothing or break if Crop and Kettle ([Github Page](https://github.com/maybejake/crop-and-kettle) [Modrinth Page](https://modrinth.com/datapack/crop-and-kettle)), is not installed. Go install it!
This is the smithed booth spiced pack. It is shaved far down for demonstration purposes.

Created By:
Stateus and Pan_Womsacz

Fix:
stock cooking pot
all tooltips
advancment for all npc




Some files and code have been taken from base Crop & Kettle. Where applicable, the following has been pasted at the header of files (mcfunction)
```
#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------
```

But for completeness, the following files have been utilized:
```
data/spiced/function/pickup
data/spiced/function/player_setup

data/spiced/function/cookbook/auto_resolve
data/spiced/function/cookbook/check_flag
data/spiced/function/cookbook/check
data/spiced/function/cookbook/get_page_data
data/spiced/function/cookbook/get_page
data/spiced/function/cookbook/lectern_button
data/spiced/function/cookbook/lookup_page
data/spiced/function/cookbook/open_page
data/spiced/function/cookbook/open
data/spiced/function/cookbook/register_pages
data/spiced/function/cookbook/reset
data/spiced/function/cookbook/resolve_ingredients
data/spiced/function/cookbook/unlock
data/spiced/function/cookbook/builder/build_page
data/spiced/function/cookbook/builder/resolve_ingredient
data/spiced/function/cookbook/builder/template
data/spiced/function/cookbook/builder/5/main
data/spiced/function/cookbook/builder/5/merge
data/spiced/function/cookbook/builder/4/main
data/spiced/function/cookbook/builder/4/merge
data/spiced/function/cookbook/builder/3/main
data/spiced/function/cookbook/builder/3/merge
data/spiced/function/cookbook/builder/2/main
data/spiced/function/cookbook/builder/2/merge
data/spiced/function/cookbook/builder/1/main
data/spiced/function/cookbook/builder/1/merge
data/spiced/function/cookbook/buttons/close
data/spiced/function/cookbook/buttons/front_bookmark
data/spiced/function/cookbook/buttons/next_incomplete_recipe
data/spiced/function/cookbook/buttons/next_page
data/spiced/function/cookbook/buttons/previous_incomplete_recipe
data/spiced/function/cookbook/buttons/previous_page
data/spiced/function/cookbook/buttons/reference_1
data/spiced/function/cookbook/buttons/reference_2
data/spiced/function/cookbook/buttons/reference_3
data/spiced/function/cookbook/buttons/reference_4
data/spiced/function/cookbook/buttons/reference_5
data/spiced/function/cookbook/buttons/return
data/spiced/function/cookbook/buttons/switch
data/spiced/function/cookbook/buttons/check_incomplete_recipe/main
data/spiced/function/cookbook/buttons/check_incomplete_recipe/reset
data/spiced/function/cookbook/take_book/macro
data/spiced/function/cookbook/take_book/main
data/spiced/function/cookbook/take_book/replace
data/spiced/function/cookbook/database/generate_uid
data/spiced/function/cookbook/database/merge
data/spiced/function/cookbook/database/get/macro
data/spiced/function/cookbook/database/get/main
data/spiced/function/cookbook/database/reset/macro
data/spiced/function/cookbook/database/reset/main
data/spiced/function/cookbook/database/set/macro
data/spiced/function/cookbook/database/set/main
data/spiced/function/cookbook/grant/any_meat
data/spiced/function/cookbook/grant/bread
data/spiced/function/cookbook/grant/butter
data/spiced/function/cookbook/grant/chicken
data/spiced/function/cookbook/grant/cinnamon
data/spiced/function/cookbook/grant/cooking_oil
data/spiced/function/cookbook/grant/dough
data/spiced/function/cookbook/grant/egg
data/spiced/function/cookbook/grant/glass_bottle
data/spiced/function/cookbook/grant/lettuce
data/spiced/function/cookbook/grant/milk_bottle
data/spiced/function/cookbook/grant/porkchop
data/spiced/function/cookbook/grant/stock
data/spiced/function/cookbook/grant/sunflower
data/spiced/function/cookbook/grant/wheat
data/spiced/function/cookbook/grant/water
data/spiced/function/cookbook/incomplete_recipe/buttons
data/spiced/function/cookbook/incomplete_recipe/check_flag
data/spiced/function/cookbook/incomplete_recipe/get_page
data/spiced/function/cookbook/incomplete_recipe/main
data/spiced/function/cookbook/incomplete_recipe/calculate_next/loop
data/spiced/function/cookbook/incomplete_recipe/calculate_next/main
data/spiced/function/cookbook/incomplete_recipe/calculate_previous/loop
data/spiced/function/cookbook/incomplete_recipe/calculate_previous/main
data/spiced/function/cookbook/lectern/check
data/spiced/function/cookbook/lectern/open
data/spiced/function/cookbook/lectern/ray/hit
data/spiced/function/cookbook/lectern/ray/ray
data/spiced/function/cookbook/lectern/ray/start
data/spiced/function/cookbook/lectern/ray/store_pos
data/spiced/function/cookbook/pages/bread
data/spiced/function/cookbook/pages/butter
data/spiced/function/cookbook/pages/cooking_oil
data/spiced/function/cookbook/pages/stock
data/spiced/function/cookbook/pages/back/page
data/spiced/function/cookbook/pages/back/register
data/spiced/function/cookbook/pages/page_gen/add_page
data/spiced/function/cookbook/pages/page_gen/check_font
data/spiced/function/cookbook/pages/page_gen/check_fonts
data/spiced/function/cookbook/pages/page_gen/register
data/spiced/function/cookbook/return/main
data/spiced/function/cookbook/sections/front/page
data/spiced/function/cookbook/sections/front/register
data/spiced/function/cookbook/stamp/build
data/spiced/function/cookbook/stamp/main

data/spiced/function/cooking_pot/cook
data/spiced/function/cooking_pot/macro
data/spiced/function/cooking_pot/place
data/spiced/function/cooking_pot/stop
data/spiced/function/cooking_pot/tick
data/spiced/function/cooking_pot/crafting/1
data/spiced/function/cooking_pot/crafting/2
data/spiced/function/cooking_pot/crafting/3
data/spiced/function/cooking_pot/crafting/4
data/spiced/function/cooking_pot/crafting/5
data/spiced/function/cooking_pot/crafting/get_unique_macro
data/spiced/function/cooking_pot/crafting/get_unique
data/spiced/function/cooking_pot/crafting/lock
data/spiced/function/cooking_pot/crafting/stove_motion
data/spiced/function/cooking_pot/crafting/generic/cooking_oil
data/spiced/function/cooking_pot/crafting/generic/meat
data/spiced/function/cooking_pot/effects/finish_cooking
data/spiced/function/cooking_pot/effects/flame
data/spiced/function/cooking_pot/effects/idling
data/spiced/function/cooking_pot/effects/start_cooking
data/spiced/function/cooking_pot/interact/main
data/spiced/function/cooking_pot/interact/store
data/spiced/function/cooking_pot/post_cook/find
data/spiced/function/cooking_pot/post_cook/on_chef

data/spiced/function/cutting_board/macro
data/spiced/function/cutting_board/place
data/spiced/function/cutting_board/cut/finish
data/spiced/function/cutting_board/cut/main
data/spiced/function/cutting_board/cut/on_chef
data/spiced/function/cutting_board/cut/recipes
data/spiced/function/cutting_board/hit/check
data/spiced/function/cutting_board/hit/main
data/spiced/function/cutting_board/interact/check
data/spiced/function/cutting_board/interact/found
data/spiced/function/cutting_board/interact/main
data/spiced/function/cutting_board/item/item_macro_components
data/spiced/function/cutting_board/item/item_macro
data/spiced/function/cutting_board/item/main
data/spiced/function/cutting_board/item/offhand
data/spiced/function/cutting_board/item/place
data/spiced/function/cutting_board/item/remove

data/spiced/function/gu/convert
data/spiced/function/gu/generate
data/spiced/function/gu/zzz/concat_uuid
data/spiced/function/gu/zzz/get_hexes
data/spiced/function/gu/zzz/load
data/spiced/function/gu/zzz/store_uuid

data/spiced/function/mixing_bowl/macro
data/spiced/function/mixing_bowl/place
data/spiced/function/mixing_bowl/tick
data/spiced/function/mixing_bowl/hit/check
data/spiced/function/mixing_bowl/hit/main
data/spiced/function/mixing_bowl/hit/remove_last
data/spiced/function/mixing_bowl/interact/check
data/spiced/function/mixing_bowl/interact/found
data/spiced/function/mixing_bowl/interact/main
data/spiced/function/mixing_bowl/item/clear
data/spiced/function/mixing_bowl/item/item_macro_components
data/spiced/function/mixing_bowl/item/item_macro
data/spiced/function/mixing_bowl/item/main
data/spiced/function/mixing_bowl/item/place
data/spiced/function/mixing_bowl/item/remove
data/spiced/function/mixing_bowl/mix/clean_up
data/spiced/function/mixing_bowl/mix/finish
data/spiced/function/mixing_bowl/mix/get_items
data/spiced/function/mixing_bowl/mix/item_check
data/spiced/function/mixing_bowl/mix/lock
data/spiced/function/mixing_bowl/mix/main
data/spiced/function/mixing_bowl/mix/particle_components
data/spiced/function/mixing_bowl/mix/particle
data/spiced/function/mixing_bowl/mix/recipes
data/spiced/function/mixing_bowl/mix/rotation
data/spiced/function/mixing_bowl/mix/generic/cooking_oil
data/spiced/function/mixing_bowl/mix/generic/milk
data/spiced/function/mixing_bowl/mix/generic/water
data/spiced/function/mixing_bowl/post_mix/find
data/spiced/function/mixing_bowl/post_mix/on_chef
data/spiced/function/mixing_bowl/repeat/insert
data/spiced/function/mixing_bowl/repeat/main
data/spiced/function/mixing_bowl/repeat/pail
data/spiced/function/mixing_bowl/repeat/check/macro_component
data/spiced/function/mixing_bowl/repeat/check/macro_no_component
data/spiced/function/mixing_bowl/repeat/check/main
data/spiced/function/mixing_bowl/repeat/compress/macro
data/spiced/function/mixing_bowl/repeat/compress/main
data/spiced/function/mixing_bowl/repeat/remove/macro_component
data/spiced/function/mixing_bowl/repeat/remove/macro_no_component
data/spiced/function/mixing_bowl/repeat/remove/main
```
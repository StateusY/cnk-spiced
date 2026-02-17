# execute \
#         if data storage cnk:temp cooking_pot.Items[{id:"minecraft:honeycomb"}] \
#         if function cnk:cooking_pot/crafting/generic/dye if score $dye_count cnk.dummy matches 1 \
#         if function cnk:cooking_pot/crafting/lock \
#         run return run function spiced:cooking_pot/recipes/crayon/main
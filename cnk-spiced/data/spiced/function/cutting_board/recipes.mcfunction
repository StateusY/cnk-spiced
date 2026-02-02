# this handles any extra recipes for the cutting board!
# when added to the cutting board tag, recipes in this file will be used for cutting board crafting:
# - cnk:tags/function/addons/cutting_board

# check the item exists, run the recipe function if it does
execute if data storage cnk:temp cutting_board.item{id:"minecraft:oak_log"} run return run function spiced:cutting_board/recipes/oak_log
execute if data storage cnk:temp cutting_board.item{id:"minecraft:potato"} run return run function spiced:cutting_board/recipes/sliced_potato
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sliced_potato"}}}}} run return run function spiced:cutting_board/recipes/diced_potato

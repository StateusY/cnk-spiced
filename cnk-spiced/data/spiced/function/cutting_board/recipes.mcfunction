# this handles any extra recipes for the cutting board!
# when added to the cutting board tag, recipes in this file will be used for cutting board crafting:
# - cnk:tags/function/addons/cutting_board

# check the item exists, run the recipe function if it does
execute if data storage cnk:temp cutting_board.item{id:"minecraft:potato"} run return run function spiced:cutting_board/recipes/sliced_potato
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sliced_potato"}}}}} run return run function spiced:cutting_board/recipes/diced_potato
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"garlic"}}}}} run return run function spiced:cutting_board/recipes/minced_garlic
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"seared_sausage"}}}}} run return run function spiced:cutting_board/recipes/sliced_seared_sausage
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"okra"}}}}} run return run function spiced:cutting_board/recipes/sliced_okra
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"celery"}}}}} run return run function spiced:cutting_board/recipes/sliced_celery
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"bell_pepper"}}}}} run return run function spiced:cutting_board/recipes/sliced_bell_pepper
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"onion"}}}}} run return run function spiced:cutting_board/recipes/sliced_onion
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sliced_celery"}}}}} run return run function spiced:cutting_board/recipes/diced_celery
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sliced_bell_pepper"}}}}} run return run function spiced:cutting_board/recipes/diced_bell_pepper
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sliced_onion"}}}}} run return run function spiced:cutting_board/recipes/diced_onion
execute if data storage cnk:temp cutting_board.item{components:{"minecraft:custom_data":{"cnk":{"ingredient":{"type":"tomato"}}}}} run return run function spiced:cutting_board/recipes/sliced_tomato

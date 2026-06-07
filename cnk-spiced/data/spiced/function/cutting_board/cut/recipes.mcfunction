#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"bread"}}}}} run return run function spiced:cutting_board/recipes/sliced_bread
execute if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"celery"}}}}} run return run function spiced:cutting_board/recipes/sliced_celery
execute if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"onion"}}}}} run return run function spiced:cutting_board/recipes/sliced_onion
execute if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sliced_bread"}}}}} run return run function spiced:cutting_board/recipes/diced_bread
execute if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sliced_celery"}}}}} run return run function spiced:cutting_board/recipes/diced_celery
execute if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sliced_onion"}}}}} run return run function spiced:cutting_board/recipes/diced_onion

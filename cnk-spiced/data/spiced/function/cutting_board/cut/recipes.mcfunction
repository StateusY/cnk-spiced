#------------------------------------------------------------------------------------
# HEY! This file is code from Crop & Kettle by Creature Comforts!
# We have been given permission to utilize it for use at smithed summit by MaybeJake.
# We do NOT claim any legal right or creative license to this file.
#------------------------------------------------------------------------------------

execute if data storage spiced:temp cutting_board.item{id:"minecraft:acacia_log"} run return run function spiced:recipes/cutting_board/cinnamon
execute if entity @p[tag=spiced.interact_cutting_board,predicate=spiced:ritual_dagger,distance=..20] if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"mystery_meat"}}}}} run return run function spiced:recipes/cutting_board/meat_guide

execute if data storage spiced:temp cutting_board.item{id:"minecraft:bread"} run return run function spiced:cutting_board/recipes/sliced_bread
execute if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"celery"}}}}} run return run function spiced:cutting_board/recipes/sliced_celery
execute if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"onion"}}}}} run return run function spiced:cutting_board/recipes/sliced_onion
execute if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sliced_bread"}}}}} run return run function spiced:cutting_board/recipes/diced_bread
execute if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sliced_celery"}}}}} run return run function spiced:cutting_board/recipes/diced_celery
execute if data storage spiced:temp cutting_board.item{components:{"minecraft:custom_data":{"spiced":{"ingredient":{"type":"sliced_onion"}}}}} run return run function spiced:cutting_board/recipes/diced_onion

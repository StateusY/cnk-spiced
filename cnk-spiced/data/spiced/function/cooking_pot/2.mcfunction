execute \
        if function spiced:cooking_pot/crafting/generic/grease if score $grease_count spiced.dummy matches 1 \
        if function spiced:cooking_pot/crafting/generic/pork if score $pork_count spiced.dummy matches 1 \
        if function spiced:cooking_pot/crafting/lock \
        run return run function spiced:cooking_pot/recipes/seared_sausage

execute \
        if function spiced:cooking_pot/crafting/generic/disc if score $disc_count spiced.dummy matches 1 \   
        if data storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"reasonable_amount_of_lettuce"}}}}}] \
        if function spiced:cooking_pot/crafting/lock \
        run return run function spiced:cooking_pot/recipes/music_disc_green_regime
execute \
        if function spiced:cooking_pot/crafting/generic/grease if score $grease_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/generic/pork if score $pork_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function spiced:cooking_pot/recipes/seared_sausage
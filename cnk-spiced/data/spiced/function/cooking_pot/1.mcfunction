execute if function cnk:cooking_pot/crafting/generic/water if score $water_count cnk.dummy matches 1 \
        if function cnk:cooking_pot/crafting/lock \
        run return run function spiced:cooking_pot/recipes/salt


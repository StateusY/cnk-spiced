execute if function spiced:cooking_pot/crafting/generic/meat if score $meat_count spiced.dummy matches 1.. \
        if data storage spiced:temp cooking_pot.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] \
        if function spiced:cooking_pot/crafting/lock \
        run return run function spiced:recipes/cooking_pot/stock
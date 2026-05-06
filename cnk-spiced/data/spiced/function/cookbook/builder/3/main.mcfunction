data modify storage spiced:temp cookbook.ingredient.id set from storage spiced:temp cookbook.current_page.ingredients[0].key
data modify storage spiced:temp cookbook.ingredient.font set from storage spiced:temp cookbook.data.font_1
data modify storage spiced:temp cookbook.ingredient.flag set from storage spiced:temp cookbook.data.slot_1
data modify storage spiced:temp cookbook.ingredient.position set value 1
function spiced:cookbook/builder/resolve_ingredient with storage spiced:temp cookbook.ingredient
data modify storage spiced:temp cookbook.ingredient.1 set from storage spiced:temp cookbook.ingredient.output

data modify storage spiced:temp cookbook.ingredient.id set from storage spiced:temp cookbook.current_page.ingredients[1].key
data modify storage spiced:temp cookbook.ingredient.font set from storage spiced:temp cookbook.data.font_2
data modify storage spiced:temp cookbook.ingredient.flag set from storage spiced:temp cookbook.data.slot_2
data modify storage spiced:temp cookbook.ingredient.position set value 2
function spiced:cookbook/builder/resolve_ingredient with storage spiced:temp cookbook.ingredient
data modify storage spiced:temp cookbook.ingredient.2 set from storage spiced:temp cookbook.ingredient.output

data modify storage spiced:temp cookbook.ingredient.id set from storage spiced:temp cookbook.current_page.ingredients[2].key
data modify storage spiced:temp cookbook.ingredient.font set from storage spiced:temp cookbook.data.font_3
data modify storage spiced:temp cookbook.ingredient.flag set from storage spiced:temp cookbook.data.slot_3
data modify storage spiced:temp cookbook.ingredient.position set value 3
function spiced:cookbook/builder/resolve_ingredient with storage spiced:temp cookbook.ingredient
data modify storage spiced:temp cookbook.ingredient.3 set from storage spiced:temp cookbook.ingredient.output

function spiced:cookbook/builder/3/merge with storage spiced:temp cookbook.ingredient
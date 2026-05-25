data remove storage spiced:temp fortune_cookie

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"dough"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot

data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{id:"minecraft:paper"}].Slot
data modify storage spiced:temp fortune_cookie.paper set from storage spiced:temp cooking_pot.Items[{id:"minecraft:paper"}]
function spiced:recipes/remove with storage spiced:temp cooking_pot

# handle fortune
data modify storage spiced:temp fortune_cookie.fortune.text set from storage spiced:temp fortune_cookie.paper.components."minecraft:custom_name"
execute unless data storage spiced:temp fortune_cookie.fortune run function spiced:recipes/cooking_pot/fortune_cookie/generate/main

# handle lucky numbers
data modify storage spiced:temp fortune_cookie.lucky_numbers set value [0,0,0]
execute store result storage spiced:temp fortune_cookie.lucky_numbers[0] int 1 run random value 1..99
execute store result storage spiced:temp fortune_cookie.lucky_numbers[1] int 1 run random value 1..99
execute store result storage spiced:temp fortune_cookie.lucky_numbers[2] int 1 run random value 1..99

# spawn fortune cookie
function spiced:recipes/cooking_pot/fortune_cookie/macro with storage spiced:temp fortune_cookie

function spiced:cooking_pot/effects/finish_cooking
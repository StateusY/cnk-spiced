data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "stock"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "cooking_oil"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "sliced_celery"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "sliced_onion"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "ground_cinnamon"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
loot spawn ~ ~0.25 ~ loot spiced:other/glass_bottle
loot spawn ~ ~0.25 ~ loot spiced:other/bowl
loot spawn ~ ~0.25 ~ loot spiced:food/huntsman_pie_incomplete_1
function spiced:cooking_pot/effects/finish_cooking

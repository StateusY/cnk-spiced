data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "huntsman_pie_incomplete_2"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "black_pepper"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "pastry_dough"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "chicken"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
data modify storage spiced:temp cooking_pot.slot set from storage spiced:temp cooking_pot.Items[{components: {"minecraft:custom_data": {spiced: {ingredient: {type: "porkchop"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp cooking_pot
loot spawn ~ ~0.25 ~ loot spiced:food/huntsman_pie
function spiced:cooking_pot/effects/finish_cooking

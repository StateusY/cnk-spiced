# woah! more compliciated!

# these remove the items from the distiller, just like the cooking pot. once again some helper functions exist for generic items
function spiced:recipes/distiller/generic/water

data modify storage spiced:temp distiller.slot set from storage spiced:temp distiller.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"corn"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp distiller

data modify storage spiced:temp distiller.slot set from storage spiced:temp distiller.Items[{components:{"minecraft:custom_data":{spiced:{ingredient:{type:"cooking_oil"}}}}}].Slot
function spiced:recipes/remove with storage spiced:temp distiller
loot spawn ~ ~0.25 ~ loot spiced:other/glass_bottle

# these set the values that are going to be output to the basin

# sets the colour of the liquid to be output, this is the colour that will also appear in the basin
# the minecraft wiki has a useful tool for converting colours to decimal format
# https://minecraft.wiki/w/Data_component_format#custom_model_data
data modify storage spiced:temp distiller.color set value 16311388

# sets the callback function that will be called when a player uses a glass bottle on the basin with liquid in it
data modify storage spiced:temp distiller.callback set value "spiced:distiller/drinks/ethanol/main"

# sets the liquid type, used in the liquid_check functions so must match
data modify storage spiced:temp distiller.liquid set value "ethanol"

# MUST be called, handles animations and setting the data on the basin
function spiced:distiller/crafting/finish_distilling
# this is another example of a page register function, but specifically for the distiller book (brewer's digest)
# its VERY smilar to how cookbook page registration works, just with less fields and no sections, look at the pumpkin pie page for extensive info
# the distiller book does NOT have discoverability, so ingredients in here do not need database flags
# also, the distiller book does not show the output item of a recipe, just the ingredients

# this function must be added to the following section function tag for it to be loaded by spiced:
# - spiced:tags/function/addons/distiller_book/pages.json

# ---------------------------------------------------------------------------------

# sets the page number from the current global, MUST be present
execute store result storage spiced:temp register.page_number int 1 run scoreboard players get $global_distiller_book_page spiced.dummy

# sets the page name
data modify storage spiced:temp register.page_name set value "item.spiced.apple_cider_vinegar"

# sets the ingredients
data modify storage spiced:temp register.ingredients set value [ \
    {key:"item.minecraft.water", font:"spiced.book:icons"}, \
    {key:"item.minecraft.apple", font:"spiced.book:icons"}, \
    {key:"item.minecraft.sugar", font:"spiced.book:icons"}, \
]

# sets the source
data modify storage spiced:temp register.source set value {key:"spiced.source", font:"spiced:icons"}

# like with the cookbook, you can define a custom dialog function if needed:
# data modify storage spiced:temp register.dialog_function set value "..."

# also like the cookbook, fonts in here are managed automatically, so no conflicts!

# register the page
function spiced:distiller_book/pages/page_gen/register
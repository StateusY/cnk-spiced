# sign
execute align xyz run summon item_display 218.99 77.5 189 {Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.625f, 4.625f, 4.625f], translation: [0.0f, 0.0f, 0.0f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:pack"}}}

#plants
execute align xyz run summon item_display 197 66 170 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:bell_pepper_crop_7"}}}
execute align xyz run summon item_display 198 66 170 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:mustard_crop_3"}}}

# workstations
execute positioned 220 67 190 run function spiced:mortar_and_pestle/place
execute positioned 220 66 189 run function spiced:cooking_pot/place

scoreboard players set $rotation spiced.dummy 0
data modify storage spiced:temp block.data set from block ~ ~ ~
execute positioned 220 67 188 run function spiced:cutting_board/place

scoreboard players set $rotation spiced.dummy -500
data modify storage spiced:temp block.data set from block ~ ~ ~
execute positioned 220 67 187 run function spiced:mixing_bowl/place

# crates
execute align xyz run summon item_display 217 70.5 191 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:bottle_crate"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/bottle_crate"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/bottle_crate"}},height:-0.6,width:1.2,response:true},\
] \
}

execute align xyz run summon item_display 223 71.5 203 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:empty_bag"}}}

execute align xyz run summon item_display 218 66.5 193 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:salt_bag"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/salt_bag"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/salt_bag"}},height:-0.6,width:1.2,response:true},\
] \
}

execute align xyz run summon item_display 224 67.5 195 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:black_pepper_bag"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/black_pepper_bag"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/black_pepper_bag"}},height:-0.6,width:1.2,response:true},\
] \
}

execute align xyz run summon item_display 227 66.5 190 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:cinnamon_bag"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/cinnamon_bag"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/cinnamon_bag"}},height:-0.6,width:1.2,response:true},\
] \
}

execute align xyz run summon item_display 209 54.5 192 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.0f, 0.0f, 1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:egg_carton"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/egg_carton"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/egg_carton"}},height:-0.6,width:1.2,response:true},\
] \
}

execute align xyz run summon item_display 190 53.5 192 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.0f, 0.0f, -1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:pork_fridge"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/pork_fridge"}},height:0.8,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/pork_fridge"}},height:-0.6,width:1.2,response:true},\
] \
}

execute align xyz run summon item_display 198 53.5 183 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:chicken_fridge"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/chicken_fridge"}},height:0.8,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/chicken_fridge"}},height:-0.6,width:1.2,response:true},\
] \
}

execute align xyz run summon item_display 201 53.5 192 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:empty_fridge"}}}

execute align xyz run summon item_display 200 53.5 192 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:empty_fridge"}}}

execute align xyz run summon item_display 198 53.5 184 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:empty_fridge"}}}

execute align xyz run summon item_display 192 53.5 190 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:empty_fridge"}}}

execute align xyz run summon item_display 191 53.5 190 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:empty_fridge"}}}

execute align xyz run summon item_display 190 53.5 190 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:empty_fridge"}}}

execute align xyz run summon item_display 191 53.5 192 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:empty_fridge"}}}

execute align xyz run summon item_display 196 53.5 183 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:empty_fridge"}}}

execute align xyz run summon item_display 196 53.5 182 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:empty_fridge"}}}

execute align xyz run summon item_display 223 75.5 184 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:sunflower_patch"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/sunflower_patch"}},height:1.2,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/sunflower_patch"}},height:-0.6,width:1.2,response:true},\
] \
}

execute align xyz run summon item_display 221 75.5 185 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:sunflower_patch"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/sunflower_patch"}},height:1.2,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/sunflower_patch"}},height:-0.6,width:1.2,response:true},\
] \
}

execute align xyz run summon item_display 208 69 176 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.38268346f, 0.0f, 0.9238795f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:wheat_bale"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/wheat_bale"}},height:1.2,width:1.5,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/wheat_bale"}},height:-0.6,width:1.5,response:true},\
    {id:"minecraft:item_display",Tags:["smithed.static","summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [0.17055333f, 0.74101645f, 0.009178937f, 0.6494013f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.7f, 0.5f, 0.387f]}}, \
    {id:"minecraft:item_display",Tags:["smithed.static","summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [-0.08214273f, -0.6239365f, 0.10143797f, 0.7704975f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.4f, 0.6f, -0.7f]}}, \
    {id:"minecraft:item_display",Tags:["smithed.static","summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [-0.20030184f, 0.68645394f, -0.21331298f, 0.665701f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.8f, 0.2f]}}, \
    {id:"minecraft:item_display",Tags:["smithed.static","summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [0.10143793f, 0.7704974f, 0.082142726f, 0.6239365f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.4f, 0.4f, 0.6f]}}, \
    {id:"minecraft:item_display",Tags:["smithed.static","summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [0.2032888f, -0.17400773f, 0.7668287f, -0.5834114f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.55f, 0.3f, -0.45f]}}, \
    {id:"minecraft:item_display",Tags:["smithed.static","summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [0.6532815f, 0.27059808f, -0.27059808f, 0.6532815f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-1.0f, -0.5f, 0.8f]}}, \
    {id:"minecraft:item_display",Tags:["smithed.static","summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [0.704927f, -0.055478975f, 0.055478975f, 0.704927f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-1.0f, -0.5f, -1.0f]}}, \
    {id:"minecraft:item_display",Tags:["smithed.static","summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [-0.043168034f, -0.7057879f, 0.7057879f, -0.043168034f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.9f, -0.5f, 0.8f]}}, \
] \
}

execute align xyz run summon item_display 199 66.5 170 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:celery_crate"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/celery_crate"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/celery_crate"}},height:-0.6,width:1.2,response:true},\
] \
}

execute align xyz run summon item_display 196 65.5 170 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:onion_crate"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/onion_crate"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/onion_crate"}},height:-0.6,width:1.2,response:true},\
] \
}

execute align xyz run summon item_display 205 69.5 195 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0f, 0.0f, 1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:pail"}}}

execute align xyz run summon item_display 205 69.5 194 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:milk_bucket"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/milk_bucket"}},height:0.2,width:0.6,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/milk_bucket"}},height:-0.6,width:0.6,response:true},\
] \
}

execute align xyz run summon item_display 198 64.5 185 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:water_bucket"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/water_bucket"}},height:0.2,width:0.6,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/water_bucket"}},height:-0.6,width:0.6,response:true},\
] \
}
execute align xyz run summon item_display 228 66.5 185 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:water_bucket"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/water_bucket"}},height:0.2,width:0.6,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/water_bucket"}},height:-0.6,width:0.6,response:true},\
] \
}

execute align xyz run summon item_display 190 56 195 {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 1f, 0.0f, 0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:pearl_jam_plush_block"}}}
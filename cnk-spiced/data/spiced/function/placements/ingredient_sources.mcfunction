# this function places all ingredient sources (places to get various ingredients like the bottle crate and milk bucket)

# sugar bag by cabin
execute align xyz run summon item_display 227 71.5 183 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:sugar_bag"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/sugar_bag"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/sugar_bag"}},height:-0.6,width:1.2,response:true},\
] \
}

# mustard crop in exterior
execute align xyz run summon item_display 198.5 66.0 170.5 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:mustard_crop_3"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/mustard_crop"}},height:0.6,width:1,response:true}\
] \
}

# bell pepper crop in exterior
execute align xyz run summon item_display 197.5 66.0 170.5 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:bell_pepper_crop_7"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/pepper_crop"}},height:1.6,width:1,response:true}\
] \
}



# - CRATES -

# bottle crate in cabin
execute align xyz run summon item_display 217 70.5 191 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:bottle_crate"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/bottle_crate"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/bottle_crate"}},height:-0.6,width:1.2,response:true},\
] \
}

# celery crate in exterior
execute align xyz run summon item_display 199 66.5 170 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:celery_crate"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/celery_crate"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/celery_crate"}},height:-0.6,width:1.2,response:true},\
] \
}

# onion crate in exterior
execute align xyz run summon item_display 196 65.5 170 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:onion_crate"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/onion_crate"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/onion_crate"}},height:-0.6,width:1.2,response:true},\
] \
}


# - BUCKETS -

# milk bucket in exterior
execute align xyz run summon item_display 205 69.5 194 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:milk_bucket"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/milk_bucket"}},height:0.2,width:0.6,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/milk_bucket"}},height:-0.6,width:0.6,response:true},\
] \
}

# water bucket 1 in exterior
execute align xyz run summon item_display 198 64.5 185 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:water_bucket"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/water_bucket"}},height:0.2,width:0.6,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/water_bucket"}},height:-0.6,width:0.6,response:true},\
] \
}

# water bucket 2 in cabin
execute align xyz run summon item_display 228 66.5 185 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:water_bucket"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/water_bucket"}},height:0.2,width:0.6,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/water_bucket"}},height:-0.6,width:0.6,response:true},\
] \
}
# water bucket 3 on boat
execute align xyz run summon item_display 209 66.5 205 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:water_bucket"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/water_bucket"}},height:0.2,width:0.6,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/water_bucket"}},height:-0.6,width:0.6,response:true},\
] \
}


# - FRIDGES -

# pork fridge in cellar
execute align xyz run summon item_display 190 53.5 192 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.0f, 0.0f, -1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:pork_fridge"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/pork_fridge"}},height:0.8,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/pork_fridge"}},height:-0.6,width:1.2,response:true},\
] \
}

# chicken fridge in cellar
execute align xyz run summon item_display 198 53.5 183 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:chicken_fridge"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/chicken_fridge"}},height:0.8,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/chicken_fridge"}},height:-0.6,width:1.2,response:true},\
] \
}


# - PATCHES -

# sunflower patch 1 in cabin
execute align xyz run summon item_display 223 75.5 184 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:sunflower_patch"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/sunflower_patch"}},height:1.2,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/sunflower_patch"}},height:-0.6,width:1.2,response:true},\
] \
}

# sunflower patch 2 in cabin
execute align xyz run summon item_display 221 75.5 185 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:sunflower_patch"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/sunflower_patch"}},height:1.2,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/sunflower_patch"}},height:-0.6,width:1.2,response:true},\
] \
}


# - MISC -

# egg carton in cellar
execute align xyz run summon item_display 209 54.5 192 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.0f, 0.0f, 1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:egg_carton"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/egg_carton"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/egg_carton"}},height:-0.6,width:1.2,response:true},\
] \
}

# wheat bale in exterior
execute align xyz run summon item_display 208 69 176 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.38268346f, 0.0f, 0.9238795f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:wheat_bale"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/wheat_bale"}},height:1.2,width:1.5,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/wheat_bale"}},height:-0.6,width:1.5,response:true},\
    {id:"minecraft:item_display",Tags:["summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [0.17055333f, 0.74101645f, 0.009178937f, 0.6494013f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.7f, 0.5f, 0.387f]}}, \
    {id:"minecraft:item_display",Tags:["summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [-0.08214273f, -0.6239365f, 0.10143797f, 0.7704975f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.4f, 0.6f, -0.7f]}}, \
    {id:"minecraft:item_display",Tags:["summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [-0.20030184f, 0.68645394f, -0.21331298f, 0.665701f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.8f, 0.2f]}}, \
    {id:"minecraft:item_display",Tags:["summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [0.10143793f, 0.7704974f, 0.082142726f, 0.6239365f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.4f, 0.4f, 0.6f]}}, \
    {id:"minecraft:item_display",Tags:["summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [0.2032888f, -0.17400773f, 0.7668287f, -0.5834114f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.55f, 0.3f, -0.45f]}}, \
    {id:"minecraft:item_display",Tags:["summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [0.6532815f, 0.27059808f, -0.27059808f, 0.6532815f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-1.0f, -0.5f, 0.8f]}}, \
    {id:"minecraft:item_display",Tags:["summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [0.704927f, -0.055478975f, 0.055478975f, 0.704927f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-1.0f, -0.5f, -1.0f]}}, \
    {id:"minecraft:item_display",Tags:["summit.booth_entity.spiced"],item: {count: 1, id: "minecraft:wheat"}, transformation: {left_rotation: [-0.043168034f, -0.7057879f, 0.7057879f, -0.043168034f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.9f, -0.5f, 0.8f]}}, \
] \
}

# lettuce fountain in fountain
execute align xyz run summon item_display 185 53.5 178 {item_display:"ground",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:fountain_base"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/lettuce_fountain"}},height:3.2,width:1,response:true} \
    ] \
}

execute align xyz run summon interaction 185 53.5 178 {Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/lettuce_fountain"}},height:0.2,width:2.5,response:true}
execute align xyz run summon item_display 185 55.375 178 {item_display:"ground",Tags:["summit.booth_entity.spiced","spiced.lettuce_statue"],transformation:{left_rotation: [0.0f, 0.1305262f, 0.0f, 0.9914449f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:fountain_statue"}},Passengers:\
[ \
    {id:"minecraft:item_display",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [-0.120244995f, -0.5608763f, 0.19247305f, 0.79618657f],right_rotation:[0f,0f,0f,1f],translation:[-0.6f,0.45f,-0.3f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:petrified_brush"}}},\
    {id:"minecraft:item_display",Tags:["summit.booth_entity.spiced"],transformation:{left_rotation: [-0.04744964f, 0.9088989f, 0.19770616f, 0.36409298f],right_rotation:[0f,0f,0f,1f],translation:[0.7f,1.6f,0.7f],scale:[0.9f,0.9f,0.9f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:petrified_lettuce"}}}\
] \
}
execute align xyz run summon interaction 186.3125 56.4375 179.1875 {Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:ingredients/lettuce_fountain"}},height:0.9,width:1,response:true}
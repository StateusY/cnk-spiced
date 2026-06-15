execute align xyz at @s run summon item_display ~ ~ ~ {item_display:"ground",Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced","spiced.cs_valid_bag","spiced.cs_filled_bag"],transformation:{left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:salt_bag"}},Passengers:\
[ \
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/salt_bag"}},height:0.6,width:1.2,response:true},\
    {id:"minecraft:interaction",Tags:["summit.interactable", "summit.static", "summit.booth_entity.spiced"],data: {summit_interactable: {on_right_click: "execute on target run function spiced:summit_booth/ingredients/salt_bag"}},height:-0.6,width:1.2,response:true},\
] \
}

execute on passengers run kill @s
kill @s
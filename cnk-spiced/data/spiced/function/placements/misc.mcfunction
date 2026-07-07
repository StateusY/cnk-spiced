# this function places all other miscellaneous items

# crane anti-softlock by cabin
summon minecraft:block_display 223.5 65.5 176.5 {Tags:["summit.booth_entity.spiced","summit.static"], block_state: {Name: "minecraft:spruce_planks"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
summon minecraft:block_display 221.5 65.5 176.5 {Tags:["summit.booth_entity.spiced","summit.static"], block_state: {Name: "minecraft:stripped_spruce_wood", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

# chair by cabin
summon minecraft:block_display 218.3125 66.25 191.9375 {Tags:["summit.booth_entity.spiced","summit.static"], block_state: {Name: "minecraft:spruce_stairs", Properties: {facing: "north", half: "bottom", shape: "straight", waterlogged: "false"}}, transformation: {left_rotation: [0.0f, 0.86602545f, 0.0f, -0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.6830127f, -0.25f, -0.1830126f]},Passengers:[ \
    {id:"minecraft:interaction",Tags: ["summit.interactable", "summit.static", "summit.booth_entity.spiced"], data: {summit_interactable: {special:"sit",height:0.3}},height:0.6,width:1.2,response:true},\
]}

# hull enterance door on boat
summon minecraft:block_display 201.5 64 205.5 {Tags:["summit.booth_entity.spiced","spiced.door","summit.static"], block_state: {Name: "minecraft:spruce_door", Properties: {facing: "north", half: "lower", hinge: "left", open: "false", powered: "false"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 1.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, 0.0f, 0.5f]},Passengers:[ \
    {id:"minecraft:interaction",Tags: ["summit.interactable", "summit.static", "summit.booth_entity.spiced"], data: {summit_interactable: {on_right_click: "execute on target run function spiced:bounds/boat/enter_passage_to_black"}},height:2,width:1.01,response:true},\
    {id:"minecraft:block_display",Tags:["summit.booth_entity.spiced","summit.static"], block_state: {Name: "minecraft:spruce_door", Properties: {facing: "north", half: "upper", hinge: "left", open: "false", powered: "false"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 1.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, 1.0f, 0.5f]}}\
]}

# hull exit door in hull
summon minecraft:block_display 196 54 203 {Tags:["summit.booth_entity.spiced","spiced.door","summit.static"], block_state: {Name: "minecraft:spruce_door", Properties: {facing: "north", half: "lower", hinge: "left", open: "false", powered: "false"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, -1.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.5f, 0.0f, -0.5f]},Passengers:[ \
    {id:"minecraft:interaction",Tags: ["summit.interactable", "summit.static", "summit.booth_entity.spiced"], data: {summit_interactable: {on_right_click: "execute on target run function spiced:bounds/boat/exit_passage_to_black"}},height:2,width:1.01,response:true},\
    {id:"minecraft:block_display",Tags:["summit.booth_entity.spiced","summit.static"], block_state: {Name: "minecraft:spruce_door", Properties: {facing: "north", half: "upper", hinge: "left", open: "false", powered: "false"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, -1.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.5f, 1.0f, -0.5f]}}\
]}

# nook enterance door in fountain
summon minecraft:block_display 186 53 172 {Tags:["summit.booth_entity.spiced","spiced.door","summit.static"], block_state: {Name: "minecraft:spruce_door", Properties: {facing: "north", half: "lower", hinge: "left", open: "false", powered: "false"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, 0.0f, -0.5f]},Passengers:[ \
    {id:"minecraft:interaction",Tags: ["summit.interactable", "summit.static", "summit.booth_entity.spiced"], data: {summit_interactable: {on_right_click: "execute on target run function spiced:bounds/cellar/nook/enter_passage_to_black"}},height:2,width:1.01,response:true},\
    {id:"minecraft:block_display",Tags:["summit.booth_entity.spiced","summit.static"], block_state: {Name: "minecraft:spruce_door", Properties: {facing: "north", half: "upper", hinge: "left", open: "false", powered: "false"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, 1.0f, -0.5f]}}\
]}

# nook exit door in nook
summon minecraft:block_display 182 53 198 {Tags:["summit.booth_entity.spiced","spiced.door","summit.static"], block_state: {Name: "minecraft:spruce_door", Properties: {facing: "north", half: "lower", hinge: "left", open: "false", powered: "false"}}, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.5f, 0.0f, 0.5f]},Passengers:[ \
    {id:"minecraft:interaction",Tags: ["summit.interactable", "summit.static", "summit.booth_entity.spiced"], data: {summit_interactable: {on_right_click: "execute on target run function spiced:bounds/cellar/nook/exit_passage_to_black"}},height:2,width:1.01,response:true},\
    {id:"minecraft:block_display",Tags:["summit.booth_entity.spiced","summit.static"], block_state: {Name: "minecraft:spruce_door", Properties: {facing: "north", half: "upper", hinge: "left", open: "false", powered: "false"}}, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.5f, 1.0f, 0.5f]}}\
]}

# cookbook and knife restore in cabin
execute positioned 219.5 67.4 183 run summon minecraft:item_display ~ ~ ~ {Tags:["summit.booth_entity.spiced","summit.static"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f, 0f, -0.5f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"spiced:tool_refresh"}}}
summon minecraft:text_display 219.5 67.8 183 {Tags:["summit.booth_entity.spiced","summit.static"], alignment: "center", background: 1073741824, default_background: 0b, line_width: 100, see_through: 0b, shadow: 0b, text: "Click to restore your Cookbook and Knife!", text_opacity: -1b,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, -0.5f]}}
summon minecraft:interaction 219.5 67 182.57 {Tags: ["summit.interactable", "summit.static", "summit.booth_entity.spiced"], data: {summit_interactable: {on_right_click: "execute on target run function spiced:extras/equip_player"}},height:0.8,width:1.01,response:true}


summon minecraft:block_display 228.5 66.1875 183.5 {Tags:["summit.booth_entity.spiced","summit.static"],block_state: {Name: "minecraft:lightning_rod", Properties: {facing: "up", powered: "false", waterlogged: "false"}}, transformation: {left_rotation: [0.0f, 0.0f, 1.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.5f, 0.5f, -0.5f]}}
summon minecraft:block_display 228.5 67.1875 183.5 {Tags:["summit.booth_entity.spiced","summit.static"],block_state: {Name: "minecraft:lightning_rod", Properties: {facing: "up", powered: "false", waterlogged: "false"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
summon minecraft:item_display 228.5625 67.75 183.37 {Tags:["summit.booth_entity.spiced","summit.static"],item: {count: 1, id: "minecraft:spyglass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.7933534f, 0.6087614f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.3, 1.3, 1.3], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:item_display 228.5625 67.75 183.625 {Tags:["summit.booth_entity.spiced","summit.static"],item: {count: 1, id: "minecraft:spyglass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.7933534f, 0.6087614f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.3, 1.3, 1.3], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:interaction 228 66 183 {Tags: ["summit.interactable", "summit.static", "summit.booth_entity.spiced"], data: {summit_interactable: {on_right_click: "execute on target run function spiced:extras/telescope/trigger_glimpse",on_left_click: "execute on attacker run function spiced:extras/telescope/trigger_glimpse"}},height:2.0,width:1.01,response:true}
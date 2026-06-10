# this function places all other miscellaneous items

# crane anti-softlock by cabin
summon minecraft:block_display 223.5 65.5 176.5 {Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"], block_state: {Name: "minecraft:spruce_planks"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
summon minecraft:block_display 221.5 65.5 176.5 {block_state: {Name: "minecraft:stripped_spruce_wood", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

# chair by cabin
summon minecraft:block_display 218.3125 66.5 191.9375 {Tags:["smithed.block","smithed.entity","smithed.strict","smithed.static","summit.booth_entity.spiced"], block_state: {Name: "minecraft:spruce_stairs", Properties: {facing: "north", half: "bottom", shape: "straight", waterlogged: "false"}}, transformation: {left_rotation: [0.0f, 0.86602545f, 0.0f, -0.49999994f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.6830127f, -0.5f, -0.1830126f]},Passengers:[ \
    {id:"minecraft:interaction",Tags: ["summit.interactable", "summit.static"], data: {summit_interactable: {special:"sit",height:0.3}},height:0.6,width:1.2,response:true},\
]}
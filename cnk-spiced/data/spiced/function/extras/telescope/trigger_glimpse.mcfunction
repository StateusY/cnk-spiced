execute if entity e460a8fe-0070-4936-984f-637aa3c7026b run return 0
execute align xyz run summon item_display 274 109 184 {item_display:"ground",Tags:["summit.booth_entity.spiced","spiced.glimpse"],interpolation_duration:10,start_interpolation:0, transformation:{left_rotation: [0.0f, 1f, 0.0f, 1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f]},item:{id:"minecraft:barrier",components:{"minecraft:item_model":"spiced:lettuce_special"}},UUID:[I;-463427330,7358774,-1739627654,-1547238805]}

# playsound minecraft:block.beacon.activate block @s ~ ~ ~ 0.5 0.5
playsound minecraft:block.beacon.power_select block @s ~ ~ ~ 1 0.5
playsound minecraft:block.respawn_anchor.ambient block @s ~ ~ ~ 1 1

schedule function spiced:extras/telescope/modify_glimpse_grow 1t

schedule function spiced:extras/telescope/modify_glimpse_shrink 40t

schedule function spiced:extras/telescope/clear_glimpse 50t
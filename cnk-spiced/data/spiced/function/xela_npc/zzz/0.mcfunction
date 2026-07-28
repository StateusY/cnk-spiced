# Generated with MC-Build

playsound minecraft:entity.husk.ambient player @a[tag=summit.in_booth.spiced,distance=..10] ~ ~ ~ 0.3 0.8
$data modify storage chatter:data ce123ae4-002f-41e0-921f-4b03d501eece set value {text: [], message:$(message)}
summon text_display ~ ~ ~ { Tags:['summit.booth_entity','chatter.text_display'], UUID:uuid('ce123ae4-002f-41e0-921f-4b03d501eece'), line_width: 120, transformation: {left_rotation:[0.0f,0.0f,0.0f,1.0f], right_rotation:[0.0f,0.0f,0.0f,1.0f], scale:[0.5f,0.5f,0.5f], translation:[0f,0f,0f]}, billboard: vertical, shadow: false, background: -2147483648, }
function spiced:xela_npc/zzz/1
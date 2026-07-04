tag @s add spiced.c4t_translate
function spiced:extras/c4t/flavor_control/flair_switch
function spiced:extras/c4t/meow/sfx
execute if entity @s[tag=!spiced.c4t_translate] run return run title @s actionbar [{text:"<C4T>", color:"gold"},{nbt:"c4t.response",storage:"spiced:temp",interpret:true, color:"white",italic:true}]
title @s actionbar [{text:"<C4T>", color:"gold"}, {text:" [",color:"gray"},{nbt:"c4t.response", storage:"spiced:temp", interpret:true, color:"white",italic:true},{text:"]",color:"gray",italic:false}]

tag @s remove spiced.c4t_translate

# function chatter {
#     #ARGS: {message: TextComponent[], delayRange: intRange, soundFunction: ResourceLocation, selector: String}

#     data modify storage aj_booth:chatter text set value []

#     $data modify storage aj_booth:chatter args set value {message:$(message),delayRange:'$(delayRange)',soundFunction:'$(soundFunction)',selector:'$(selector)'}
#     $data modify entity $(selector) text set value [[],'']

#     block loop {
#         { with storage aj_booth:chatter args
#             $execute as $(selector) at @s run { with storage aj_booth:chatter args
#                 $function $(soundFunction)
#                 data modify storage aj_booth:chatter text append from storage aj_booth:chatter args.message[0]
#                 data remove storage aj_booth:chatter args.message[0]

#                 data modify entity @s text set from storage aj_booth:chatter text
#             }

#             execute store result score #length v run data get storage aj_booth:chatter args.message
#             execute if score #length v matches 0 run return 1

#             # Get a random delay for the next message from the delay range
#             $execute store result storage aj_booth:chatter args.delay int 1 run random value $(delayRange)
#             { with storage aj_booth:chatter args
#                 $schedule function ^2 $(delay)
#             }
#         }
#     }
# }
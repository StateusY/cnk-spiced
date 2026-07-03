# Generated with MC-Build

#ARGS: {message: TextComponent[], delayRange: intRange, soundFunction: ResourceLocation, selector: String}
data modify storage spiced:chatter text set value []
$data modify storage spiced:chatter args set value {message:$(message),delayRange:'$(delayRange)',soundFunction:'$(soundFunction)',selector:'$(selector)'}
$data modify entity $(selector) text set value [[],'']
function spiced:chatter/loop
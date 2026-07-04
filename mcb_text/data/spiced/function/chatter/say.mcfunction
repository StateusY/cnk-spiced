# Generated with MC-Build

#ARGS: {message: TextComponent[], delayRange: intRange, soundFunction: ResourceLocation, selector: String}
$tag $(selector) add chatter.text_display
$execute store result storage chatter:data args.id int 1 store result score $(selector) chatter.id run scoreboard players add #chatter.last_id chatter.id 1
$function spiced:chatter/zzz/0 {message:$(message), delayRange:'$(delayRange)', soundFunction:'$(soundFunction)', selector:'$(selector)'}
function spiced:chatter/loop
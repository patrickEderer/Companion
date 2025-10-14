$data merge storage te_be:temp {block:$(block)}
scoreboard players set .unknown_block error 1
execute if function te_be:dialog/fill/run/try_start run scoreboard players set .unknown_block error 0

execute if score .unknown_block error matches 1 run function te_be:dialog/fill/open
execute if score .unknown_block error matches 1 run return fail

$function te:fill {block:"$(block)"}
$data modify storage te_be:temp last_action set value "function te:fill {block:\"$(block)\"}"
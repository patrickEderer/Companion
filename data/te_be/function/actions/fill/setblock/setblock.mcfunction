$execute unless score .efficient operation_settings matches 1 run setblock ~ ~ ~ $(block) replace
$execute if score .efficient operation_settings matches 1 run function te_be:actions/fill/setblock/efficient/calc {block:$(block)}
kill @s
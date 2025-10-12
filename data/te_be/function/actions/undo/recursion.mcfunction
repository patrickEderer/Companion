$function te_be:actions/undo/setblock with storage te_be:undo data.$(undo_index).blocks.$(block_index)

scoreboard players add .block_index undo 1
execute store result storage te_be:undo temp.block_index int 1 run scoreboard players get .block_index undo
$execute if data storage te_be:undo data.$(undo_index).blocks.$(block_index) run function te_be:actions/undo/recursion with storage te_be:undo temp
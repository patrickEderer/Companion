execute if score .undo_index undo matches ..0 run return fail

scoreboard players set .block_index undo 1
execute store result storage te_be:undo temp.block_index int 1 run scoreboard players get .block_index undo
execute store result storage te_be:undo temp.undo_index int 1 run scoreboard players get .undo_index undo
function te_be:actions/undo/recursion with storage te_be:undo temp

scoreboard players remove .undo_index undo 1
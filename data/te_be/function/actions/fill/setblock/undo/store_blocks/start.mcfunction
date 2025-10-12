execute store result storage te_be:undo temp.x double 1 run data get entity @s Pos[0] 1
execute store result storage te_be:undo temp.y double 1 run data get entity @s Pos[1] 1
execute store result storage te_be:undo temp.z double 1 run data get entity @s Pos[2] 1

scoreboard players add .undo_block_index undo 1
execute store result storage te_be:undo temp.current_block_index int 1 run scoreboard players get .undo_block_index undo

data merge storage te_be:undo {temp:{block:"minecraft:air"}}
function util:get_block {"storage":"te_be:undo temp.block"}
function te_be:actions/fill/setblock/undo/store_blocks/store with storage te_be:undo temp
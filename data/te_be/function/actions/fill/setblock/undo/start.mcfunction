scoreboard players set .undo_block_index undo 0

scoreboard players add .undo_index undo 1
execute if score .undo_index undo > .undo_max settings run say undo limit reached
execute if score .undo_index undo > .undo_max settings run scoreboard players operation .undo_index undo = .undo_max settings

execute store result storage te_be:undo temp.undo_index int 1 run scoreboard players get .undo_index undo
execute as @e[type=marker,tag=te_marker_fill] at @s run function te_be:actions/fill/setblock/undo/store_blocks/start
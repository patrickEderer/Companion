scoreboard players set .undo_index temp 1
execute store result storage te_be:undo temp.undo_index int 1 run scoreboard players get .undo_index temp
execute as @e[type=marker,tag=te_marker_fill] at @s run function te_be:actions/fill/setblock/undo/store_blocks/start
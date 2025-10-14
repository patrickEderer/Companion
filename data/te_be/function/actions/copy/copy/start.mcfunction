execute store result score .start_pos_x copy run data get entity @s Pos[0] 1
execute store result score .start_pos_y copy run data get entity @s Pos[1] 1
execute store result score .start_pos_z copy run data get entity @s Pos[2] 1

data remove storage te_be:copy data.$(name)

execute as @e[type=marker,tag=te_marker_copy] at @s run function te_be:actions/copy/copy/as_marker

kill @e[tag=te_marker_copy]
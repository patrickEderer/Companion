particle composter ~ ~ ~ 0 0 0 0 1 force @s

#store pos
execute store result score .current difference_x run data get entity @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5] Pos[0] 1
execute store result score .current difference_y run data get entity @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5] Pos[1] 1
execute store result score .current difference_z run data get entity @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5] Pos[2] 1

execute unless score .max difference_x >= .current difference_x run kill @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5]
execute unless score .max difference_y >= .current difference_y run kill @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5]
execute unless score .max difference_z >= .current difference_z run kill @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5]
execute if entity @e[type=marker,tag=te_marker_fill,distance=...5] run return fail

summon marker ~ ~ ~ {Tags:["te_marker_fill"]}

execute store result score .current difference_x run data get entity @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5] Pos[0] 1
execute if score .max difference_x > .current difference_x positioned ~1 ~ ~ run function te_be:actions/fill/spawn/spawn_recursive/spawn with storage te_be:selection

execute store result score .current difference_y run data get entity @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5] Pos[1] 1
execute if score .max difference_y > .current difference_y positioned ~ ~1 ~ run function te_be:actions/fill/spawn/spawn_recursive/spawn with storage te_be:selection

execute store result score .current difference_z run data get entity @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5] Pos[2] 1
execute if score .max difference_z > .current difference_z positioned ~ ~ ~1 run function te_be:actions/fill/spawn/spawn_recursive/spawn with storage te_be:selection
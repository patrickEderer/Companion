summon marker ~ ~ ~ {Tags:["te_copy_temp"]}

$execute store result storage te_be:copy data.$(name).start.x double 1 run data get entity @e[tag=te_copy_temp,sort=nearest,limit=1,distance=...1] Pos[0] 1
$execute store result storage te_be:copy data.$(name).start.y double 1 run data get entity @e[tag=te_copy_temp,sort=nearest,limit=1,distance=...1] Pos[1] 1
$execute store result storage te_be:copy data.$(name).start.z double 1 run data get entity @e[tag=te_copy_temp,sort=nearest,limit=1,distance=...1] Pos[2] 1

execute store result score .start_pos_x copy run data get entity @e[tag=te_copy_temp,sort=nearest,limit=1,distance=...1] Pos[0] 1
execute store result score .start_pos_y copy run data get entity @e[tag=te_copy_temp,sort=nearest,limit=1,distance=...1] Pos[1] 1
execute store result score .start_pos_z copy run data get entity @e[tag=te_copy_temp,sort=nearest,limit=1,distance=...1] Pos[2] 1

kill @e[tag=te_copy_temp,sort=nearest,limit=1,distance=...1]
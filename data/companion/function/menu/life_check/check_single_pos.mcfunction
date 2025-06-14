# @p is player - @s is menu entity
$execute store result storage companion:temp v.v1 int 1 run data get entity @p Pos[$(i)] 10
$execute store result storage companion:temp v.v2 int 1 run data get entity @s data.player_pos[$(i)] 10
execute store result score .result temp run function math:compare/equals with storage companion:temp v
execute if score .result temp matches 1 at @s run function companion:menu/life_check/kill

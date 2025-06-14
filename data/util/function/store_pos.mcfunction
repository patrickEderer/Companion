forceload add ~ ~

summon minecraft:marker ~ ~ ~ {Tags: ["temp"]}
execute as @e[type=marker,tag=temp,limit=1] rotated as @p run tp @s ~ ~ ~ ~ ~

$data modify storage util:temp pos.x$(i) set from entity @e[type=marker, tag=temp, limit=1] Pos[0]
$data modify storage util:temp pos.y$(i) set from entity @e[type=marker, tag=temp, limit=1] Pos[1]
$data modify storage util:temp pos.z$(i) set from entity @e[type=marker, tag=temp, limit=1] Pos[2]
$data modify storage util:temp pos.pitch$(i) set from entity @e[type=marker, tag=temp, limit=1] Rotation[0]
$data modify storage util:temp pos.yaw$(i) set from entity @e[type=marker, tag=temp, limit=1] Rotation[1]

kill @e[type=marker,tag=temp]

forceload remove ~ ~
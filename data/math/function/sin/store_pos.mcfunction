forceload add ~ ~

summon minecraft:marker ~ ~ ~ {Tags: ["temp"]}

execute store result storage math:results trig.sin float 0.0001 run data get entity @e[type=marker,tag=temp,limit=1] Pos[0] 10000

kill @e[type=marker,tag=temp]

forceload remove ~ ~
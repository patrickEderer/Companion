forceload add ~ ~

summon minecraft:marker ~ ~ ~ {Tags: ["temp"]}

$execute store result score .sin temp run data get entity @e[type=marker,tag=temp,limit=1] Pos[0] $(p)

kill @e[type=marker,tag=temp]

forceload remove ~ ~

return run scoreboard players get .sin temp
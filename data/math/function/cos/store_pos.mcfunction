forceload add ~ ~

summon marker ~ ~ ~ {Tags: ["temp"]}

$execute store result score .cos temp run data get entity @e[type=marker,tag=temp,limit=1] Pos[2] $(p)

kill @e[type=marker,tag=temp]

forceload remove ~ ~

return run scoreboard players get .cos temp
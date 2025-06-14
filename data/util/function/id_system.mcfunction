execute as @a unless score @s id matches 0.. run scoreboard players set @s id 0
execute if entity @a[scores={id=0}] run scoreboard players add .global id 1
execute as @r[scores={id=0}] run scoreboard players operation @s id = .global id
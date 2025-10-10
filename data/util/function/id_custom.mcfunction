$execute as @e[tag=$(tag)] unless score @s id matches 0.. run scoreboard players set @s id 0
$execute if entity @e[tag=$(tag),scores={id=0}] run scoreboard players add .global id 1
$execute as @e[tag=$(tag),scores={id=0},sort=random] run scoreboard players operation @s id = .global id
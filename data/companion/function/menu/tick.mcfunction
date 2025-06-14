execute as @a if data entity @s Inventory[{Slot: -106b}].components."minecraft:custom_data".bound_animal_id at @s run function companion:menu/open

execute as @e[tag=menu-center] at @s run function companion:menu/update
execute as @e[tag=menu-item-selection] at @s run function companion:menu/selection/update
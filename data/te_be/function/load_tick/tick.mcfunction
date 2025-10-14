function te_be:item/tick

execute as @a if data storage te_be:selection start run function te_be:selection/display/particles_start with storage te_be:selection start
execute as @a if data storage te_be:selection end run function te_be:selection/display/particles_end with storage te_be:selection end
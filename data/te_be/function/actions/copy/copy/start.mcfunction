function te_be:actions/copy/copy/store_pos with storage te_be:copy

execute as @e[type=marker,tag=te_marker_copy] at @s run function te_be:actions/copy/copy/as_marker with storage te_be:selection end

kill @e[tag=te_marker_copy]
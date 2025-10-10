#spawn markers
function te_be:selection/calc/difference
function te_be:actions/fill/spawn/spawn with storage te_be:selection min_max
function te_be:actions/fill/setblock/undo/start
$execute as @e[tag=te_marker_fill] at @s run function te_be:actions/fill/setblock/setblock {"block":$(block)}
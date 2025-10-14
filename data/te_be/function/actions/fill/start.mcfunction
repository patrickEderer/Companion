#spawn markers
tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"gold","text":"-"},{"bold":false,"color":"gray","text":"---] Calculating..."}]
function te_be:selection/calc/difference

function te_be:actions/fill/count_blocks
function te_be:operation_settings/apply
tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"dark_green","text":"✔"},{"bold":true,"color":"gold","text":"-"},{"bold":false,"color":"gray","text":"--] Spawning Markers..."}]
function te_be:actions/fill/spawn/spawn with storage te_be:selection min_max

tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"dark_green","text":"✔✔"},{"bold":true,"color":"gold","text":"-"},{"bold":false,"color":"gray","text":"-] Storing Blocks..."}]
function te_be:actions/undo/save/start

tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"dark_green","text":"✔✔✔"},{"bold":true,"color":"gold","text":"-"},{"bold":false,"color":"gray","text":"] Placing Blocks..."}]
$execute as @e[tag=te_marker_fill] at @s run function te_be:actions/fill/setblock/setblock {"block":$(block)}

tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"dark_green","text":"✔✔✔✔"},{"bold":false,"color":"gray","text":"] "},{"text":"Done","color":"dark_green"}]
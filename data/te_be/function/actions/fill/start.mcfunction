#spawn markers
tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"gold","text":"-"},{"bold":false,"color":"gray","text":"---] Calculating..."}]
function te_be:selection/calc/difference

function te_be:actions/fill/count_blocks
tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"dark_green","text":"✔"},{"bold":true,"color":"gold","text":"-"},{"bold":false,"color":"gray","text":"--] Spawning Markers..."}]
function te_be:actions/fill/spawn/spawn with storage te_be:selection min_max


tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"dark_green","text":"✔✔"},{"bold":true,"color":"gold","text":"-"},{"bold":false,"color":"gray","text":"-] Storing Blocks..."}]
execute if score .blocks_affected temp matches ..1000 run function te_be:actions/fill/setblock/undo/start
execute unless score .blocks_affected temp matches ..1000 run tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"dark_green","text":"✔✔"},{"bold":false,"color":"yellow","text":"⚠"},{"bold":false,"color":"gray","text":"-] "},{"text":"Too many blocks! Efficient mode enabled.","color":"yellow",hover_event:{action:"show_text",value:[{"text":"Efficient mode deactivates undo storage to optimize block placements"}]}}]

execute if score .blocks_affected temp matches ..1000 run tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"dark_green","text":"✔✔✔"},{"bold":true,"color":"gold","text":"-"},{"bold":false,"color":"gray","text":"] Placing Blocks..."}]
execute unless score .blocks_affected temp matches ..1000 run tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"dark_green","text":"✔✔"},{"bold":false,"color":"yellow","text":"⚠"},{"bold":true,"color":"gold","text":"-"},{"bold":false,"color":"gray","text":"] Placing Blocks..."}]
$execute as @e[tag=te_marker_fill] at @s run function te_be:actions/fill/setblock/setblock {"block":$(block)}

execute if score .blocks_affected temp matches ..1000 run tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"dark_green","text":"✔✔✔✔"},{"bold":false,"color":"gray","text":"] "},{"text":"Done","color":"dark_green"}]
execute unless score .blocks_affected temp matches ..1000 run tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":true,"color":"dark_green","text":"✔✔"},{"bold":false,"color":"yellow","text":"⚠"},{"bold":true,"color":"dark_green","text":"✔"},{"bold":false,"color":"gray","text":"] "},{"text":"Done","color":"dark_green"}]
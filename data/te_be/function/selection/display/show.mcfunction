#kill @e[tag=te_selection]

function te_be:selection/calc/difference

execute if entity @e[tag=te_selection] run function te_be:selection/display/move with storage te_be:selection min_max
execute unless entity @e[tag=te_selection] run function te_be:selection/display/spawn with storage te_be:selection min_max
function te_be:selection/display/translate with storage te_be:selection difference
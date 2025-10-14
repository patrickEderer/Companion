execute if entity @e[type=marker,tag=te_marker_copy,distance=...5] run return fail

summon marker ~ ~ ~ {Tags:["te_marker_copy"]}
function util:particle {reason:summon}

#check settings
function te_be:actions/copy/spawn/spawn_recursive/settings/check

execute unless entity @e[type=marker,tag=te_marker_copy,distance=...5] run return fail

execute positioned ~1 ~ ~ run function te_be:actions/copy/spawn/spawn_recursive/spawn with storage te_be:selection
execute positioned ~ ~1 ~ run function te_be:actions/copy/spawn/spawn_recursive/spawn with storage te_be:selection
execute positioned ~ ~ ~1 run function te_be:actions/copy/spawn/spawn_recursive/spawn with storage te_be:selection
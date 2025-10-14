execute if entity @e[type=marker,tag=te_marker_fill,distance=...5] run return fail

summon marker ~ ~ ~ {Tags:["te_marker_fill"]}
function util:particle {reason:summon}

#check settings
execute if score .outline operation_settings matches 1 run function te_be:actions/fill/settings/check_outline
execute if score .wall operation_settings matches 1 run function te_be:actions/fill/settings/check_wall
function te_be:actions/fill/settings/check_outside

execute unless entity @e[type=marker,tag=te_marker_fill,limit=1,sort=nearest,distance=...5] run return fail

execute unless score .efficient operation_settings matches 1 positioned ~1 ~ ~ run function te_be:actions/fill/spawn/spawn_recursive/spawn with storage te_be:selection
execute unless score .efficient operation_settings matches 1 positioned ~ ~1 ~ run function te_be:actions/fill/spawn/spawn_recursive/spawn with storage te_be:selection
execute unless score .efficient operation_settings matches 1 positioned ~ ~ ~1 run function te_be:actions/fill/spawn/spawn_recursive/spawn with storage te_be:selection

execute if score .efficient operation_settings matches 1 positioned ~31 ~ ~ run function te_be:actions/fill/spawn/spawn_recursive/spawn with storage te_be:selection
execute if score .efficient operation_settings matches 1 positioned ~ ~31 ~ run function te_be:actions/fill/spawn/spawn_recursive/spawn with storage te_be:selection
execute if score .efficient operation_settings matches 1 positioned ~ ~ ~31 run function te_be:actions/fill/spawn/spawn_recursive/spawn with storage te_be:selection
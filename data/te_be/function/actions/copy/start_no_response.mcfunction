#reset
scoreboard players set .copy_block_index copy 0
data merge storage te_be:copy {name:"",x:0,y:0,z:0,dx:0,dy:0,dz:0}
$data remove storage te_be:copy data.$(name)
$data modify storage te_be:copy name set value "$(name)"

#logic
function te_be:selection/calc/difference
function te_be:actions/copy/spawn/spawn with storage te_be:selection min_max
function te_be:actions/copy/copy/start
data merge storage te_be:temp {undo:{x:0,y:0,z:0}}
data modify storage te_be:temp undo set from storage te_be:selection start
function te_be:actions/undo/save/run_copy with storage te_be:temp undo
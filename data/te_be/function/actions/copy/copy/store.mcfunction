function util:particle {reason:store}

execute in te:temp run forceload add ~ ~
clone ~ ~-1 ~ ~ ~-2 ~ to te:temp ~ ~-2 ~

setblock ~ ~-1 ~ structure_block[mode=save]
$data merge block ~ ~-1 ~ {sizeX:$(dx),sizeY:$(dy),sizeZ:$(dz),name:copy_$(name)_$(current_block_index)}
setblock ~ ~-2 ~ redstone_block

clone from te:temp ~ ~-1 ~ ~ ~-2 ~ to overworld ~ ~-2 ~
execute in te:temp run forceload remove ~ ~

function te_be:actions/copy/copy/storage/store with storage te_be:copy
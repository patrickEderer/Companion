$data modify storage te_be:paste temp.pos_x set from storage te_be:copy data.$(name).blocks.$(paste_block_index).x
$data modify storage te_be:paste temp.pos_y set from storage te_be:copy data.$(name).blocks.$(paste_block_index).y
$data modify storage te_be:paste temp.pos_z set from storage te_be:copy data.$(name).blocks.$(paste_block_index).z
$data modify storage te_be:paste temp.block set from storage te_be:copy data.$(name).blocks.$(paste_block_index).block

$execute positioned $(pos_x) $(pos_y) $(pos_z) run function te_be:actions/paste/place/place with storage te_be:paste temp
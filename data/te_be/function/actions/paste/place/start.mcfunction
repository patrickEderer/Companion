$data modify storage te_be:paste temp set from storage te_be:copy data.$(name).$(paste_block_index)

$execute positioned $(pos_x) $(pos_y) $(pos_z) run function te_be:actions/paste/place/pos_relative with storage te_be:paste temp
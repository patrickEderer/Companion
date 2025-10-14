data merge storage te_be:paste {paste_block_index:0,pos_x:0,pos_y:0,pos_z:0,temp:{pos_x:0,pos_y:0,pos_z:0,block:"minecraft:test_block[mode=fail]"}}
scoreboard players set .paste_block_index paste 0

$data modify storage te_be:paste name set value $(name)
function te_be:actions/paste/load_pos
function te_be:actions/paste/recursive
data merge storage te_be:paste {paste_block_index:1,pos_x:0,pos_y:0,pos_z:0,temp:{x:0,y:0,z:0}}
scoreboard players set .paste_block_index paste 1

$data modify storage te_be:paste name set value $(name)
function te_be:actions/paste/load_pos
function te_be:actions/paste/recursive
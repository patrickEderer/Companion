scoreboard players add .paste_block_index paste 1

execute store result storage te_be:paste paste_block_index int 1 run scoreboard players get .paste_block_index paste

function te_be:actions/paste/place/start with storage te_be:paste

execute if function te_be:actions/paste/check/start_check run function te_be:actions/paste/recursive
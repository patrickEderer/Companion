scoreboard players operation .blocks_affected temp = .difference difference_x
scoreboard players operation .blocks_affected temp *= .difference difference_y
scoreboard players operation .blocks_affected temp *= .difference difference_z

execute store result storage te_be:selection temp.blocks_affected double 1 run scoreboard players get .blocks_affected temp

execute unless score .blocks_affected temp matches ..1000 run scoreboard players set .efficient operation_settings 1
scoreboard players operation .pos_x_storage copy = .start_pos_x copy
scoreboard players operation .pos_y_storage copy = .start_pos_y copy
scoreboard players operation .pos_z_storage copy = .start_pos_z copy

$function math:structure/save_literal {v:$(x)}
$scoreboard players operation .pos_x_storage copy -= .$(x) literal
$function math:structure/save_literal {v:$(y)}
$scoreboard players operation .pos_y_storage copy -= .$(y) literal
$function math:structure/save_literal {v:$(z)}
$scoreboard players operation .pos_z_storage copy -= .$(z) literal

function math:structure/save_literal {v:-1}
scoreboard players operation .pos_x_storage copy *= .-1 literal
scoreboard players operation .pos_y_storage copy *= .-1 literal
scoreboard players operation .pos_z_storage copy *= .-1 literal

$data merge storage te_be:copy {data:{$(name):{$(current_block_index):{x:0,y:0,z:0}}}}

$execute store result storage te_be:copy data.$(name).$(current_block_index).x double 1 run scoreboard players get .pos_x_storage copy
$execute store result storage te_be:copy data.$(name).$(current_block_index).y double 1 run scoreboard players get .pos_y_storage copy
$execute store result storage te_be:copy data.$(name).$(current_block_index).z double 1 run scoreboard players get .pos_z_storage copy
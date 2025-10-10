#min
$execute positioned $(min_x) $(min_y) $(min_z) run summon item_display ~-.5 ~.5 ~ {Tags:["te_selection","te_selection_x"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_nx"]}}}}
$execute positioned $(min_x) $(min_y) $(min_z) run summon item_display ~ ~ ~ {Tags:["te_selection","te_selection_y"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_ny"]}}}}
$execute positioned $(min_x) $(min_y) $(min_z) run summon item_display ~ ~.5 ~-.5 {Tags:["te_selection","te_selection_z"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_nz"]}}}}

#max
$execute positioned $(min_x) $(max_y) $(max_z) run summon item_display ~-.5 ~.5 ~ {Tags:["te_selection","te_selection_x"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_x"]}}}}
$execute positioned $(max_x) $(min_y) $(max_z) run summon item_display ~ ~ ~ {Tags:["te_selection","te_selection_y"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_y"]}}}}
$execute positioned $(max_x) $(max_y) $(min_z) run summon item_display ~ ~.5 ~-.5 {Tags:["te_selection","te_selection_z"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_z"]}}}}

#edge x
$execute positioned $(max_x) $(min_y) $(min_z) run summon item_display ~ ~ ~ {Tags:["te_selection","te_selection_y"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_ex_y"]}}}}
$execute positioned $(max_x) $(min_y) $(min_z) run summon item_display ~ ~.5 ~-.5 {Tags:["te_selection","te_selection_z"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_ex_z"]}}}}

#edge y
$execute positioned $(min_x) $(max_y) $(min_z) run summon item_display ~-.5 ~.5 ~ {Tags:["te_selection","te_selection_x"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_ey_x"]}}}}
$execute positioned $(min_x) $(max_y) $(min_z) run summon item_display ~ ~.5 ~-.5 {Tags:["te_selection","te_selection_z"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_ey_z"]}}}}

#edge z
$execute positioned $(min_x) $(min_y) $(max_z) run summon item_display ~-.5 ~.5 ~ {Tags:["te_selection","te_selection_x"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_ez_x"]}}}}
$execute positioned $(min_x) $(min_y) $(max_z) run summon item_display ~ ~ ~ {Tags:["te_selection","te_selection_y"],brightness:{sky:15,block:15},Glowing:0b,glow_color_override:16711680,item:{id:"minecraft:paper",count:1,view_range:1000f,components:{"minecraft:custom_model_data":{strings:["selection_ez_y"]}}}}
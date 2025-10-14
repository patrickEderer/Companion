#min
$execute positioned $(min_x) $(min_y) $(min_z) run tp @e[tag=te_selection,tag=te_selection_nx] ~-.5 ~.5 ~
$execute positioned $(min_x) $(min_y) $(min_z) run tp @e[tag=te_selection,tag=te_selection_ny] ~ ~ ~
$execute positioned $(min_x) $(min_y) $(min_z) run tp @e[tag=te_selection,tag=te_selection_nz] ~ ~.5 ~-.5

#max
$execute positioned $(min_x) $(max_y) $(max_z) run tp @e[tag=te_selection,tag=te_selection_x] ~-.5 ~.5 ~
$execute positioned $(max_x) $(min_y) $(max_z) run tp @e[tag=te_selection,tag=te_selection_y] ~ ~ ~
$execute positioned $(max_x) $(max_y) $(min_z) run tp @e[tag=te_selection,tag=te_selection_z] ~ ~.5 ~-.5

#edge x
$execute positioned $(max_x) $(min_y) $(min_z) run tp @e[tag=te_selection,tag=te_selection_ex_y] ~ ~ ~
$execute positioned $(max_x) $(min_y) $(min_z) run tp @e[tag=te_selection,tag=te_selection_ex_z] ~ ~.5 ~-.5

#edge y
$execute positioned $(min_x) $(max_y) $(min_z) run tp @e[tag=te_selection,tag=te_selection_ey_x] ~-.5 ~.5 ~
$execute positioned $(min_x) $(max_y) $(min_z) run tp @e[tag=te_selection,tag=te_selection_ey_z] ~ ~.5 ~-.5

#edge z
$execute positioned $(min_x) $(min_y) $(max_z) run tp @e[tag=te_selection,tag=te_selection_ez_x] ~-.5 ~.5 ~
$execute positioned $(min_x) $(min_y) $(max_z) run tp @e[tag=te_selection,tag=te_selection_ez_y] ~ ~ ~
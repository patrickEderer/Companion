summon marker ~ ~ ~ {Tags:["te_selection_ray_hit"]}

execute if data entity @s SelectedItem.components.minecraft:custom_data.start run function te_be:selection/item/use/hit_start
execute if data entity @s SelectedItem.components.minecraft:custom_data.end run function te_be:selection/item/use/hit_end

kill @e[tag=te_selection_ray_hit,limit=1,sort=nearest]

function te_be:selection/display/show
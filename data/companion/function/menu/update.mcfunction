function util:store_pos {"i":""}
execute at @a if score @s menu_player_id = @p id run function companion:menu/life_check/check with storage util:temp pos

execute at @a if score @s menu_player_id = @p id run function companion:menu/selection/check

execute as @e[tag=menu-interaction] if data entity @s interaction at @a if score @s menu_player_id = @p id run function companion:menu/on_click/on_click
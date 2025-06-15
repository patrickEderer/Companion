# @p is player
# Nearest entity is interaction

data remove entity @s attack
data remove entity @s interaction

execute as @e[tag=menu-item-selection] if score @s menu_player_id = @e[tag=menu-interaction,sort=nearest,limit=1] menu_player_id at @s run function companion:menu/on_click/execute_at_pos with storage companion:temp menu
execute as @e[tag=menu-item] if score @s menu_player_id = @e[tag=menu-interaction,sort=nearest,limit=1] menu_player_id at @s run function companion:menu/on_click/execute_as_item with storage companion:temp menu
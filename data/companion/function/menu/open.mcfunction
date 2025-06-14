# Reset
function companion:menu/swap_hands

execute store result storage companion:temp player.id int 1 run scoreboard players get @s id
execute store result score .result temp run function companion:menu/is_menu_open with storage companion:temp player
execute if score .result temp matches 0 positioned ~ ~1.65 ~ run function companion:menu/summon/pos
execute unless score .result temp matches 0 as @e[tag=menu] if score @s menu_player_id = @p id run function companion:menu/close
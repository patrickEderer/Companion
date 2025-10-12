execute unless block ~ ~ ~ air run function te_be:selection/item/use/hit
execute unless block ~ ~ ~ air run return fail

execute unless entity @s[distance=..5] run function te_be:selection/item/use/hit
execute unless entity @s[distance=..5] run return fail

execute positioned ^ ^ ^0.1 run function te_be:selection/item/use/ray
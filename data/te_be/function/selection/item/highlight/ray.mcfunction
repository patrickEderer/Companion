execute unless block ~ ~ ~ air align xyz run function te_be:selection/item/highlight/show
execute unless block ~ ~ ~ air run return fail

execute unless entity @s[distance=..5] align xyz run function te_be:selection/item/highlight/show
execute unless entity @s[distance=..5] run return fail

execute if entity @s[distance=..5] positioned ^ ^ ^0.1 run function te_be:selection/item/highlight/ray
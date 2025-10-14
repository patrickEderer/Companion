execute unless block ~ ~ ~ air align xyz run function te_be:item/highlight/show
execute unless block ~ ~ ~ air run return fail

execute positioned ~ ~-1.8 ~ unless entity @s[distance=..5] positioned ~ ~1.8 ~ align xyz run function te_be:item/highlight/show
execute positioned ~ ~-1.8 ~ unless entity @s[distance=..5] positioned ~ ~1.8 ~ run return fail

execute positioned ^ ^ ^0.1 run function te_be:item/highlight/ray
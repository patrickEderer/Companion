execute unless block ~ ~ ~ air run function te_be:item/use/hit
execute unless block ~ ~ ~ air run return fail

execute positioned ~ ~-1.8 ~ unless entity @s[distance=..5] positioned ~ ~1.8 ~ run function te_be:item/use/hit
execute positioned ~ ~-1.8 ~ unless entity @s[distance=..5] positioned ~ ~1.8 ~ run return fail

execute positioned ^ ^ ^0.1 run function te_be:item/use/ray
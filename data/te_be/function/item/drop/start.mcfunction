execute as @e[type=item,sort=nearest,limit=1] unless data entity @s Item.components."minecraft:custom_data".selection run return fail

execute in te:temp run function te_be:item/drop/in_temp

kill @e[type=item,sort=nearest,limit=1]

scoreboard players reset @s drop

execute at @s run function te_be:item/drop/drop_action
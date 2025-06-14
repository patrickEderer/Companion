# @p is player - @s is menu item
execute positioned ~ ~1.65 ~ positioned ^ ^ ^1 if entity @s[distance=..0.1,tag=menu-item-selection] at @s run function companion:menu/selection/hovering/while
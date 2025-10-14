forceload add ~ ~

setblock ~ ~ ~ air replace

setblock ~ ~ ~ chest
data modify block ~ ~ ~ Items append from entity @e[type=item,sort=nearest,limit=1] Item

item replace entity @s weapon.mainhand from block ~ ~ ~ container.0

forceload remove ~ ~
summon tnt ~ ~ ~ {fuse: 1}
particle sonic_boom ~ ~ ~ 0.0 0.0 0.0 0.1 1 force

execute if entity @s[distance=..1] run return run kill @s
execute positioned ~ ~-1 ~ run function companion:abilities/attacks/airstrike/airstrike_raycast

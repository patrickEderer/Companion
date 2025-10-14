summon marker ~ ~ ~ {Tags:["te_paste_temp"]}

data modify storage te_be:paste pos_x set from entity @e[tag=te_paste_temp,sort=nearest,limit=1,distance=...1] Pos[0]
data modify storage te_be:paste pos_y set from entity @e[tag=te_paste_temp,sort=nearest,limit=1,distance=...1] Pos[1]
data modify storage te_be:paste pos_z set from entity @e[tag=te_paste_temp,sort=nearest,limit=1,distance=...1] Pos[2]

kill @e[tag=te_paste_temp,sort=nearest,limit=1,distance=...1]
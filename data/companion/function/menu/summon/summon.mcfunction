function util:tag/add_to_all

summon marker ~ ~ ~ {Tags:["menu","menu-center","companion-entity"]}
data modify entity @e[tag=menu-center,tag=!tagged,limit=1,sort=nearest] data.player_pos set from entity @s Pos
data modify entity @e[tag=menu-center,tag=!tagged,limit=1,sort=nearest] data.player_rot set from entity @s Rotation

$summon item_display ~ ~ ~ {Tags:["menu","menu-item","menu-item-i-1","companion-entity"],Glowing:1b,glow_color_override:17669,interpolation_duration:5,view_range:0.01f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0f],right_rotation:[0.0f,1.0f,0.0f,0f],translation:[$(x1)f,$(y1)f,$(z1)f],scale:[0.125f,0.125f,0.125f]},item:{id:"minecraft:dirt",count:1}}
$summon marker ~$(x1) ~$(y1) ~$(z1) {Tags:["menu","menu-item-selection","menu-item-i-1","companion-entity"],data:{menu_item_tag:"menu-item-i-1"}}

$summon item_display ~ ~ ~ {Tags:["menu","menu-item","menu-item-i-2","companion-entity"],Glowing:1b,glow_color_override:17669,interpolation_duration:5,view_range:0.01f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0f],right_rotation:[0.0f,1.0f,0.0f,0f],translation:[$(x2)f,$(y2)f,$(z2)f],scale:[0.125f,0.125f,0.125f]},item:{id:"minecraft:dirt",count:1}}
$summon marker ~$(x2) ~$(y2) ~$(z2) {Tags:["menu","menu-item-selection","menu-item-i-2","companion-entity"],data:{menu_item_tag:"menu-item-i-2"}}

$summon item_display ~ ~ ~ {Tags:["menu","menu-item","menu-item-i-3","companion-entity"],Glowing:1b,glow_color_override:17669,interpolation_duration:5,view_range:0.01f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0f],right_rotation:[0.0f,1.0f,0.0f,0f],translation:[$(x3)f,$(y3)f,$(z3)f],scale:[0.125f,0.125f,0.125f]},item:{id:"minecraft:dirt",count:1}}
$summon marker ~$(x3) ~$(y3) ~$(z3) {Tags:["menu","menu-item-selection","menu-item-i-3","companion-entity"],data:{menu_item_tag:"menu-item-i-3"}}

$summon item_display ~ ~ ~ {Tags:["menu","menu-item","menu-item-i-4","companion-entity"],Glowing:1b,glow_color_override:17669,interpolation_duration:5,view_range:0.01f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0f],right_rotation:[0.0f,1.0f,0.0f,0f],translation:[$(x4)f,$(y4)f,$(z4)f],scale:[0.125f,0.125f,0.125f]},item:{id:"minecraft:dirt",count:1}}
$summon marker ~$(x4) ~$(y4) ~$(z4) {Tags:["menu","menu-item-selection","menu-item-i-4","companion-entity"],data:{menu_item_tag:"menu-item-i-4"}}

execute as @e[tag=menu,tag=!tagged,distance=..10] run scoreboard players operation @s menu_player_id = @p id

$function util:store_temp_value {"n":"v","v":"$(pitch0)"}
execute store result storage util:temp temp.v float 1 run data get storage util:temp temp.v 0.5
function math:sin/calc with storage util:temp temp
function math:cos/calc with storage util:temp temp
execute as @e[tag=menu-item,tag=!tagged,distance=..10] run function companion:menu/summon/rotate with storage math:results trig

function util:tag/rm
# @s are all menu item entities with same id
$execute if entity @s[tag=$(hovering_over_tag)] run data merge entity @s {transformation:{scale:[0.2f,0.2f,0.2f]},start_interpolation:-1,brightness:{sky:15,block:15}}
$execute unless entity @s[tag=$(hovering_over_tag)] run data merge entity @s {transformation:{scale:[0.15f,0.15f,0.15f]},start_interpolation:-1,brightness:{sky:2,block:2}}
# @s are all menu item entities with same id
$execute if entity @s[tag=$(hovering_over_tag)] run data merge entity @s {transformation:{scale:[0.2f,0.2f,0.2f]},start_interpolation:-1,glow_color_override:41740}
$execute unless entity @s[tag=$(hovering_over_tag)] run data merge entity @s {transformation:{scale:[0.125f,0.125f,0.125f]},start_interpolation:-1,glow_color_override:17669}
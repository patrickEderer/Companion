# @p is player - @s is menu entity
scoreboard players set .result temp 0
execute unless score .result temp matches 1 run function companion:menu/life_check/check_single_pos {"i":"0"}
execute unless score .result temp matches 1 run function companion:menu/life_check/check_single_pos {"i":"1"}
execute unless score .result temp matches 1 run function companion:menu/life_check/check_single_pos {"i":"2"}
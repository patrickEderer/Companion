data remove storage te_be:main_hand_temp_storage item

data modify storage te_be:main_hand_temp_storage item append from entity @s SelectedItem

data modify storage te_be:main_hand_temp_storage custom_data set value "{}"
data modify storage te_be:main_hand_temp_storage custom_data set from entity @s SelectedItem.components."minecraft:custom_data"

execute if data entity @s equipment.offhand.components.minecraft:custom_data.start run function te_be:selection/item/item_replace_end
execute if data entity @s equipment.offhand.components.minecraft:custom_data.end run function te_be:selection/item/item_replace_start

execute in te:temp run forceload add ~ ~
execute in te:temp run setblock ~ ~ ~ air
execute in te:temp run setblock ~ ~ ~ chest
execute in te:temp run data modify block ~ ~ ~ Items set from storage te_be:main_hand_temp_storage item
execute in te:temp run data modify block ~ ~ ~ Items[0].components."minecraft:custom_data" set from storage te_be:main_hand_temp_storage custom_data
execute in te:temp run item replace entity @s weapon.offhand from block ~ ~ ~ container.0
execute in te:temp run forceload remove ~ ~
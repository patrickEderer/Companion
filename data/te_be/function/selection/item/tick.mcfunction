execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{selection:1b}}}}] at @s anchored eyes positioned ^ ^ ^ run function te_be:selection/item/highlight/ray

execute as @a if data entity @s equipment.offhand.components.minecraft:custom_data.selection at @s run function te_be:selection/item/swap
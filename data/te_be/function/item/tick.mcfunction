execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{selection:1b}}}}] at @s anchored eyes positioned ^ ^ ^ run function te_be:item/highlight/ray

execute as @a if data entity @s equipment.offhand.components.minecraft:custom_data.selection at @s run function te_be:item/swap

execute as @a[scores={drop=1..}] at @s run function te_be:item/drop/start
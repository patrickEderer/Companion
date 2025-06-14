data remove storage companion:main_hand_temp_storage item

data modify storage companion:main_hand_temp_storage item append from entity @s SelectedItem

item replace entity @s weapon.mainhand from entity @s weapon.offhand

execute anchored eyes in companion:temp run function companion:menu/set_main_hand
forceload add ~ ~

setblock ~ ~ ~ chest

data modify block ~ ~ ~ Items set from storage companion:main_hand_temp_storage item

item replace entity @s weapon.offhand from block ~ ~ ~ container.0

# Reset
setblock ~ ~ ~ air

forceload remove ~ ~
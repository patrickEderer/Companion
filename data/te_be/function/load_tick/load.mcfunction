tellraw @a [{"bold":true,"color":"dark_green","text":"Terr"},{"bold":true,"color":"gold","text":"Edit"},{"bold":false,"color":"gray","text":" by "},{"bold":true,"color":"dark_aqua","text":"commandkind"}]

scoreboard objectives add undo dummy
scoreboard objectives add settings dummy
scoreboard objectives add operation_settings dummy

scoreboard players set .undo_max settings 2

gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647
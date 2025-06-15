function util:store_pos {"i":"0"}
execute positioned 0. 0. 0. positioned ^0.25 ^ ^1 run function util:store_pos {"i":"1"}
execute positioned 0. 0. 0. positioned ^ ^0.25 ^1 run function util:store_pos {"i":"2"}
execute positioned 0. 0. 0. positioned ^-0.25 ^ ^1 run function util:store_pos {"i":"3"}
execute positioned 0. 0. 0. positioned ^ ^-0.25 ^1 run function util:store_pos {"i":"4"}
execute positioned 0. 0. 0. positioned ^ ^ ^1.1 run function util:store_pos {"i":"5"}
execute rotated 0 0 run function companion:menu/summon/summon with storage util:temp pos

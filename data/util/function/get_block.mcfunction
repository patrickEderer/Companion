loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe[enchantments={"silk_touch":1}]
$data modify storage $(storage) set from entity @e[type=item,sort=nearest,distance=...2,limit=1] Item.id
execute unless entity @e[type=item,sort=nearest,distance=...2,limit=1] run say fallback
$execute unless entity @e[type=item,sort=nearest,distance=...2,limit=1] run function util:get_block_fallback {storage:"$(storage)"}
kill @e[type=item,sort=nearest,distance=...2,limit=1]
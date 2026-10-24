

#block displays

#special case -- piston head
execute if entity @s[nbt={block_state:"minecraft:piston_head"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:piston"
execute if entity @s[nbt={block_state:{id:"minecraft:piston_head"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:piston"


#these have to be hardcoded because the items have different ids to the blocks

# Wheat
execute if entity @s[nbt={block_state:"minecraft:wheat"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:wheat_seeds"
execute if entity @s[nbt={block_state:{id:"minecraft:wheat"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:wheat_seeds"
# Pumpkin Stem
execute if entity @s[nbt={block_state:"minecraft:pumpkin_stem"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:pumpkin_seeds"
execute if entity @s[nbt={block_state:{id:"minecraft:pumpkin_stem"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:pumpkin_seeds"
# Melon Stem
execute if entity @s[nbt={block_state:"minecraft:melon_stem"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:melon_seeds"
execute if entity @s[nbt={block_state:{id:"minecraft:melon_stem"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:melon_seeds"
# Carrots
execute if entity @s[nbt={block_state:"minecraft:carrots"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:carrot"
execute if entity @s[nbt={block_state:{id:"minecraft:carrots"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:carrot"
# Potatoes
execute if entity @s[nbt={block_state:"minecraft:potatoes"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:potato"
execute if entity @s[nbt={block_state:{id:"minecraft:potatoes"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:potato"
# Sweet Berry Bush
execute if entity @s[nbt={block_state:"minecraft:sweet_berry_bush"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:sweet_berries"
execute if entity @s[nbt={block_state:{id:"minecraft:sweet_berry_bush"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:sweet_berries"
# Pitcher Crop
execute if entity @s[nbt={block_state:"minecraft:pitcher_crop"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:pitcher_pod"
execute if entity @s[nbt={block_state:{id:"minecraft:pitcher_crop"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:pitcher_pod"
# Redstone Wire
execute if entity @s[nbt={block_state:"minecraft:redstone_wire"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:redstone"
execute if entity @s[nbt={block_state:{id:"minecraft:redstone_wire"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:redstone"
# Water
execute if entity @s[nbt={block_state:"minecraft:water"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:water_bucket"
execute if entity @s[nbt={block_state:{id:"minecraft:water"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:water_bucket"
# Lava
execute if entity @s[nbt={block_state:"minecraft:lava"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:lava_bucket"
execute if entity @s[nbt={block_state:{id:"minecraft:lava"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:lava_bucket"
# Powder Snow
execute if entity @s[nbt={block_state:"minecraft:powder_snow"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:powder_snow_bucket"
execute if entity @s[nbt={block_state:{id:"minecraft:powder_snow"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:powder_snow_bucket"
# Fire
execute if entity @s[nbt={block_state:"minecraft:fire"}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:flint_and_steel"
execute if entity @s[nbt={block_state:{id:"minecraft:fire"}}] run return run data modify entity @n[type=item,distance=..3] Item.id set value "minecraft:flint_and_steel"


data modify entity @n[type=item,distance=..3] Item.id set from entity @n[type=block_display,tag=sloths_display,tag=!sloths_display.locked] block_state




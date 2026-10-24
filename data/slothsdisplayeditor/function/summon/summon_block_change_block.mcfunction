

#these have to be hardcoded because the items have different ids to the blocks

execute if items entity @s weapon.offhand minecraft:wheat_seeds run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:wheat"
execute if items entity @s weapon.offhand minecraft:pumpkin_seeds run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:pumpkin_stem"
execute if items entity @s weapon.offhand minecraft:melon_seeds run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:melon_stem"
execute if items entity @s weapon.offhand minecraft:carrot run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:carrots"
execute if items entity @s weapon.offhand minecraft:potato run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:potatoes"
execute if items entity @s weapon.offhand minecraft:sweet_berries run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:sweet_berry_bush"
execute if items entity @s weapon.offhand minecraft:pitcher_pod run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:pitcher_crop"
execute if items entity @s weapon.offhand minecraft:redstone run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:redstone_wire"
execute if items entity @s weapon.offhand minecraft:string run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:tripwire"
execute if items entity @s weapon.offhand minecraft:water_bucket run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:water"
execute if items entity @s weapon.offhand minecraft:lava_bucket run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:lava"
execute if items entity @s weapon.offhand minecraft:powder_snow_bucket run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:powder_snow"

execute if items entity @s weapon.offhand minecraft:flint_and_steel run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set value "minecraft:fire"



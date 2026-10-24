execute unless items entity @s weapon.offhand * run return run tellraw @s [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"You must be holding a block in your offhand to perform this action!","color":"red"}]

execute at @s align xyz run summon block_display ~0.5 ~0.5 ~0.5 {Tags:["sloths_new_display", "sloths_display"]}
#execute at @s align xyz run summon block_display ~ ~ ~ {Tags:["sloths_new_display", "sloths_display"]}


execute if data entity @s equipment.offhand.id run data modify entity @n[type=block_display,tag=sloths_new_display] block_state set from entity @s equipment.offhand.id
#certain blocks have to be changed because the items have different ids to the blocks
function slothsdisplayeditor:summon/summon_block_change_block


execute unless data entity @s equipment.offhand.id run kill @n[type=block_display,tag=sloths_new_display]

data modify entity @n[type=block_display,tag=sloths_new_display] transformation.translation set value [-0.5,-0.5,-0.5]

execute unless data entity @n[type=block_display,tag=sloths_new_display] {block_state:"minecraft:air"} run item modify entity @s weapon.offhand slothsdisplayeditor:decrement


execute if data entity @n[type=block_display,tag=sloths_new_display] {block_state:"minecraft:air"} run tellraw @s [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"Could not summon Block Display. Ensure you are holding a block, not an item. If the placed item should be a block, report this as a bug","color":"red"}]
execute if data entity @n[type=block_display,tag=sloths_new_display] {block_state:"minecraft:air"} run kill @n[type=block_display,tag=sloths_new_display]


tag @e[type=block_display,tag=sloths_new_display] remove sloths_new_display


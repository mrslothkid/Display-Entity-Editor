
execute if items entity @s weapon.offhand minecraft:piston run execute at @s align xyz run summon block_display ~0.5 ~0.5 ~0.5 {Tags:["sloths_new_display", "sloths_display"],block_state:{id:"minecraft:piston_head"}}
execute if items entity @s weapon.offhand minecraft:piston run data modify entity @n[type=block_display,tag=sloths_new_display] transformation.translation set value [-0.5,-0.5,-0.5]

execute unless items entity @s weapon.offhand minecraft:piston run tellraw @s [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"You must be holding a regular piston in your offhand to perform this action!","color":"red"}]
execute unless items entity @s weapon.offhand piston run kill @n[tag=sloths_new_display]

execute if items entity @s weapon.offhand minecraft:piston run item modify entity @s weapon.offhand slothsdisplayeditor:decrement

tag @e[type=block_display,tag=sloths_new_display] remove sloths_new_display

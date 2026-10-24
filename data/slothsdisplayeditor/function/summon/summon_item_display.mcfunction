execute unless items entity @s weapon.offhand * run return run tellraw @s [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"You must be holding an item in your offhand to perform this action!","color":"red"}]

execute at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags:["sloths_new_display", "sloths_display"]}

execute if data entity @s equipment.offhand.id run data modify entity @n[type=item_display,tag=sloths_new_display] item set from entity @s equipment.offhand
execute unless data entity @s equipment.offhand.id run kill @n[type=item_display,tag=sloths_new_display]

tag @e[type=item_display,tag=sloths_new_display] remove sloths_new_display

item modify entity @s weapon.offhand slothsdisplayeditor:decrement


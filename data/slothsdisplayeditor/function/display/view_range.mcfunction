execute at @s unless entity @n[distance=..10,type=#slothsdisplayeditor:display_entity,tag=sloths_display,tag=!sloths_display.locked] run return run tellraw @s [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"No Text Display Entity found within 10 blocks!","color":"red"}]

execute at @s unless items entity @s weapon.offhand minecraft:writable_book run return run tellraw @s [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"You must be holding a book and quill in your offhand to perform this action!","color":"red"}]

$execute at @s run data modify entity @n[type=#slothsdisplayeditor:display_entity,tag=sloths_display,tag=!sloths_display.locked,distance=..10] view_range set value $(playerinput)
tellraw @s [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"Display updated!","color":"green"}]


execute at @n[tag=sloths_display,tag=!sloths_display.locked,type=#slothsdisplayeditor:display_entity] run summon item ~ ~ ~ {Item:{id:"stone",count:1}}

#execute if nearest slothsdisplay is an item display run function xyz
#execute if nearest slothsdisplay is a block display run function abc

execute as @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] if entity @s[type=item_display] run function slothsdisplayeditor:kill/item_display
execute as @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] if entity @s[type=block_display] run function slothsdisplayeditor:kill/block_display


kill @n[tag=sloths_display,tag=!sloths_display.locked,type=#slothsdisplayeditor:display_entity]



#$data modify entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] brightness.sky set value $(magnitude)
execute store result entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] brightness.sky int 1 run data get storage slothsdisplayeditor:temp magnitude 1

#$data merge entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] {brightness:{sky:$(magnitude)}}}



#$data modify entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] brightness.block set value $(magnitude)
execute store result entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] brightness.block int 1 run data get storage slothsdisplayeditor:temp magnitude 1

#$data merge entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] {brightness:{block:$(magnitude)}}


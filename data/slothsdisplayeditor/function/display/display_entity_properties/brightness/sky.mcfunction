

#$data modify entity @n[tag=sloths_display,tag=!sloths_display.locked] brightness.sky set value $(magnitude)
execute store result entity @n[tag=sloths_display,tag=!sloths_display.locked] brightness.sky int 1 run data get storage slothsdisplayeditor:temp magnitude 1

#$data merge entity @n[tag=sloths_display,tag=!sloths_display.locked] {brightness:{sky:$(magnitude)}}

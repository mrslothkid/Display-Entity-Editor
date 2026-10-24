
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 0 run data modify entity @n[tag=sloths_display,tag=!sloths_display.locked,type=text_display,distance=..10] shadow set value 0b
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 run data modify entity @n[tag=sloths_display,tag=!sloths_display.locked,type=text_display,distance=..10] shadow set value 1b


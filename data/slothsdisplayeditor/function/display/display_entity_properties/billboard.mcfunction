
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify entity @n[tag=sloths_display,tag=!sloths_display.locked] billboard set value "fixed"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify entity @n[tag=sloths_display,tag=!sloths_display.locked] billboard set value "vertical"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify entity @n[tag=sloths_display,tag=!sloths_display.locked] billboard set value "horizontal"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 3 run data modify entity @n[tag=sloths_display,tag=!sloths_display.locked] billboard set value "center"
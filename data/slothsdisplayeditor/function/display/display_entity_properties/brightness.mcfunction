

execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 0 run function slothsdisplayeditor:display/display_entity_properties/brightness/block with storage slothsdisplayeditor:temp
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 run function slothsdisplayeditor:display/display_entity_properties/brightness/sky with storage slothsdisplayeditor:temp
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run function slothsdisplayeditor:display/display_entity_properties/brightness/add_override
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run function slothsdisplayeditor:display/display_entity_properties/brightness/remove_override


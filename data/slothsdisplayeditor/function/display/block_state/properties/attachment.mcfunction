data modify storage slothsdisplayeditor:temp properties set value {}
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.attachment set value "ceiling"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.attachment set value "double_wall"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.attachment set value "floor"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 3 run data modify storage slothsdisplayeditor:temp properties.attachment set value "single_wall"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp
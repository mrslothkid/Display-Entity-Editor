data modify storage slothsdisplayeditor:temp properties set value {}
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.axis set value "x"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.axis set value "y"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.axis set value "z"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp
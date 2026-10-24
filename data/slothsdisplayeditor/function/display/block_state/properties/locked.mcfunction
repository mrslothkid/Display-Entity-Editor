data modify storage slothsdisplayeditor:temp properties set value {}


execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.locked set value "false"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.locked set value "true"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

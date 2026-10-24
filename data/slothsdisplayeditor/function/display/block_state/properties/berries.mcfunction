data modify storage slothsdisplayeditor:temp properties set value {berries:"false"}
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.berries set value "true"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp
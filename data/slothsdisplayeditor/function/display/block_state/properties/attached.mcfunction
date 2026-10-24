data modify storage slothsdisplayeditor:temp properties set value {attached:"false"}
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.attached set value "true"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

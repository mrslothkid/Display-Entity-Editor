data modify storage slothsdisplayeditor:temp properties set value {}


execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.thickness set value "base"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.thickness set value "frustum"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.thickness set value "middle"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 3 run data modify storage slothsdisplayeditor:temp properties.thickness set value "tip"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 4 run data modify storage slothsdisplayeditor:temp properties.thickness set value "tip_merge"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

data modify storage slothsdisplayeditor:temp properties set value {}


execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.sculk_sensor_phase set value "active"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.sculk_sensor_phase set value "cooldown"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.sculk_sensor_phase set value "inactive"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

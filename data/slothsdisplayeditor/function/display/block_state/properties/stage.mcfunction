data modify storage slothsdisplayeditor:temp properties set value {}
execute store result storage slothsdisplayeditor:temp properties.stage int 1 run scoreboard players get $modify_entity_magnitude slothsdisplayeditor.modify
data modify storage slothsdisplayeditor:temp properties.stage set string storage slothsdisplayeditor:temp properties.stage
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

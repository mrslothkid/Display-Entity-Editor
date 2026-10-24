data modify storage slothsdisplayeditor:temp properties set value {}
execute store result storage slothsdisplayeditor:temp properties.charges int 1 run scoreboard players get $modify_entity_magnitude slothsdisplayeditor.modify
data modify storage slothsdisplayeditor:temp properties.charges set string storage slothsdisplayeditor:temp properties.charges
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

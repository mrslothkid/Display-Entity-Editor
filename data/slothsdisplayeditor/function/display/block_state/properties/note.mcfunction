data modify storage slothsdisplayeditor:temp properties set value {}
execute store result storage slothsdisplayeditor:temp properties.note int 1 run scoreboard players get $modify_entity_magnitude slothsdisplayeditor.modify
data modify storage slothsdisplayeditor:temp properties.note set string storage slothsdisplayeditor:temp properties.note
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

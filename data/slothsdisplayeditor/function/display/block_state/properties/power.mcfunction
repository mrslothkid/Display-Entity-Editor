data modify storage slothsdisplayeditor:temp properties set value {}
execute store result storage slothsdisplayeditor:temp properties.power int 1 run scoreboard players get $modify_entity_magnitude slothsdisplayeditor.modify
data modify storage slothsdisplayeditor:temp properties.power set string storage slothsdisplayeditor:temp properties.power
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

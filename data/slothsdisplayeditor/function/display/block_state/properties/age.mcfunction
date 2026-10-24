data modify storage slothsdisplayeditor:temp properties set value {}
execute store result storage slothsdisplayeditor:temp properties.age int 1 run scoreboard players get $modify_entity_magnitude slothsdisplayeditor.modify
data modify storage slothsdisplayeditor:temp properties.age set string storage slothsdisplayeditor:temp properties.age
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

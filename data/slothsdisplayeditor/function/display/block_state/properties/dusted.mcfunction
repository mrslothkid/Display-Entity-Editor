data modify storage slothsdisplayeditor:temp properties set value {}


execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.dusted set value "0"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.dusted set value "1"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.dusted set value "2"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 3 run data modify storage slothsdisplayeditor:temp properties.dusted set value "3"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

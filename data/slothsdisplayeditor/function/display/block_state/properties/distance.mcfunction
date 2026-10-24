data modify storage slothsdisplayeditor:temp properties set value {}


execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.distance set value "0"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.distance set value "1"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.distance set value "2"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 3 run data modify storage slothsdisplayeditor:temp properties.distance set value "3"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 4 run data modify storage slothsdisplayeditor:temp properties.distance set value "4"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 5 run data modify storage slothsdisplayeditor:temp properties.distance set value "5"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 6 run data modify storage slothsdisplayeditor:temp properties.distance set value "6"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 7 run data modify storage slothsdisplayeditor:temp properties.distance set value "7"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

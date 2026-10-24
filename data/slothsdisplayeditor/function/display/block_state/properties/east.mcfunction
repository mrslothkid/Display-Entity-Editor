data modify storage slothsdisplayeditor:temp properties set value {}


execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 0 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.east set value "false"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 0 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.east set value "true"

execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.east set value "none"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.east set value "side"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.east set value "up"

execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.east set value "low"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.east set value "none"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.east set value "tall"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

data modify storage slothsdisplayeditor:temp properties set value {}


execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 0 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.type set value "normal"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 0 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.type set value "sticky"

execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.type set value "left"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.type set value "right"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.type set value "single"

execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.type set value "bottom"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.type set value "double"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.type set value "top"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

data modify storage slothsdisplayeditor:temp properties set value {}


execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 0 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.mode set value "compare"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 0 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.mode set value "subtract"

execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.mode set value "corner"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.mode set value "data"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.mode set value "load"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 3 run data modify storage slothsdisplayeditor:temp properties.mode set value "save"

execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.mode set value "accept"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.mode set value "fail"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.mode set value "log"
execute if score $modify_entity_posneg slothsdisplayeditor.modify matches 2 if score $modify_entity_magnitude slothsdisplayeditor.modify matches 3 run data modify storage slothsdisplayeditor:temp properties.mode set value "start"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

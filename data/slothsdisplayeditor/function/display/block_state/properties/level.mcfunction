data modify storage slothsdisplayeditor:temp properties set value {}


execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.level set value "0"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.level set value "1"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.level set value "2"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 3 run data modify storage slothsdisplayeditor:temp properties.level set value "3"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 4 run data modify storage slothsdisplayeditor:temp properties.level set value "4"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 5 run data modify storage slothsdisplayeditor:temp properties.level set value "5"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 6 run data modify storage slothsdisplayeditor:temp properties.level set value "6"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 7 run data modify storage slothsdisplayeditor:temp properties.level set value "7"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 8 run data modify storage slothsdisplayeditor:temp properties.level set value "8"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 9 run data modify storage slothsdisplayeditor:temp properties.level set value "9"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 10 run data modify storage slothsdisplayeditor:temp properties.level set value "10"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 11 run data modify storage slothsdisplayeditor:temp properties.level set value "11"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 12 run data modify storage slothsdisplayeditor:temp properties.level set value "12"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 13 run data modify storage slothsdisplayeditor:temp properties.level set value "13"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 14 run data modify storage slothsdisplayeditor:temp properties.level set value "14"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 15 run data modify storage slothsdisplayeditor:temp properties.level set value "15"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

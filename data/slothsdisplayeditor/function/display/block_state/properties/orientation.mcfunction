data modify storage slothsdisplayeditor:temp properties set value {}
# orientation property generated
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.orientation set value "down_east"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.orientation set value "down_north"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.orientation set value "down_south"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 3 run data modify storage slothsdisplayeditor:temp properties.orientation set value "down_west"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 4 run data modify storage slothsdisplayeditor:temp properties.orientation set value "east_up"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 5 run data modify storage slothsdisplayeditor:temp properties.orientation set value "north_up"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 6 run data modify storage slothsdisplayeditor:temp properties.orientation set value "south_up"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 7 run data modify storage slothsdisplayeditor:temp properties.orientation set value "up_east"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 8 run data modify storage slothsdisplayeditor:temp properties.orientation set value "up_north"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 9 run data modify storage slothsdisplayeditor:temp properties.orientation set value "up_south"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 10 run data modify storage slothsdisplayeditor:temp properties.orientation set value "up_west"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 11 run data modify storage slothsdisplayeditor:temp properties.orientation set value "west_up"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

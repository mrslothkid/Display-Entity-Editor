
#have to do it twice because having block states vs not changes if block_state or block_state.id
execute if data entity @n[tag=sloths_display,tag=!sloths_display.locked] block_state.properties run data modify storage slothsdisplayeditor:temp id set from entity @n[tag=sloths_display,tag=!sloths_display.locked] block_state.id
execute unless data entity @n[tag=sloths_display,tag=!sloths_display.locked] block_state.properties run data modify storage slothsdisplayeditor:temp id set from entity @n[tag=sloths_display,tag=!sloths_display.locked] block_state

execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run function slothsdisplayeditor:display/wall_convert/turn_into_non-wall_variant_blockstate with storage slothsdisplayeditor:temp
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run function slothsdisplayeditor:display/wall_convert/turn_into_wall_variant_blockstate with storage slothsdisplayeditor:temp

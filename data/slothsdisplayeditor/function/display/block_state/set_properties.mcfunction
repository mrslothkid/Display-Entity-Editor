
data modify storage slothsdisplayeditor:temp block_state set value {id:"",properties:{}}
data modify storage slothsdisplayeditor:temp block_state.id set string entity @n[tag=sloths_display,tag=!sloths_display.locked] block_state
data modify storage slothsdisplayeditor:temp block_state.id set from entity @n[tag=sloths_display,tag=!sloths_display.locked] block_state.id
data modify storage slothsdisplayeditor:temp block_state.properties set from entity @n[tag=sloths_display,tag=!sloths_display.locked] block_state.properties
data modify storage slothsdisplayeditor:temp block_state.properties merge from storage slothsdisplayeditor:temp properties
data modify entity @n[tag=sloths_display,tag=!sloths_display.locked] block_state set from storage slothsdisplayeditor:temp block_state

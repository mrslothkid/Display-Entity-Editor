data modify storage slothsdisplayeditor:temp block_state set from entity @n[tag=sloths_display,tag=!sloths_display.locked] block_state
data modify storage slothsdisplayeditor:temp block_state.properties."$(state)" set value "$(value)"
data modify entity @n[tag=sloths_display,tag=!sloths_display.locked] block_state set from storage slothsdisplayeditor:temp block_state
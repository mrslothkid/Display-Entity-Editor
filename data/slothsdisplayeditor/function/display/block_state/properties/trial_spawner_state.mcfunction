data modify storage slothsdisplayeditor:temp properties set value {}


execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 0 run data modify storage slothsdisplayeditor:temp properties.trial_spawner_state set value "inactive"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 1 run data modify storage slothsdisplayeditor:temp properties.trial_spawner_state set value "waiting_for_players"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 2 run data modify storage slothsdisplayeditor:temp properties.trial_spawner_state set value "active"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 3 run data modify storage slothsdisplayeditor:temp properties.trial_spawner_state set value "waiting_for_reward_ejection"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 4 run data modify storage slothsdisplayeditor:temp properties.trial_spawner_state set value "ejecting_reward"
execute if score $modify_entity_magnitude slothsdisplayeditor.modify matches 5 run data modify storage slothsdisplayeditor:temp properties.trial_spawner_state set value "cooldown"
function slothsdisplayeditor:display/block_state/set_properties with storage slothsdisplayeditor:temp

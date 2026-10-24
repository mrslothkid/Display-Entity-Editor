

#tellraw @a [{text: "Scale with magnitude "}, {"score":{"name":"$modify_entity_magnitude","objective":"slothsdisplayeditor.modify"}}, {text: " on axis "}, {"score":{"name":"$modify_entity_axis","objective":"slothsdisplayeditor.modify"}} ]


#x
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 1 run execute store result score $current_calc slothsdisplayeditor.modify run data get entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] transformation.scale[0] 1000
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 1 run execute store result score $incoming_calc slothsdisplayeditor.modify run data get storage slothsdisplayeditor:temp pixels 1000
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 1 run scoreboard players operation $current_calc slothsdisplayeditor.modify += $incoming_calc slothsdisplayeditor.modify
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 1 run execute store result entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] transformation.scale[0] float 0.001 run scoreboard players get $current_calc slothsdisplayeditor.modify

#y
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 2 run execute store result score $current_calc slothsdisplayeditor.modify run data get entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] transformation.scale[1] 1000
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 2 run execute store result score $incoming_calc slothsdisplayeditor.modify run data get storage slothsdisplayeditor:temp pixels 1000
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 2 run scoreboard players operation $current_calc slothsdisplayeditor.modify += $incoming_calc slothsdisplayeditor.modify
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 2 run execute store result entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] transformation.scale[1] float 0.001 run scoreboard players get $current_calc slothsdisplayeditor.modify

#z
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 3 run execute store result score $current_calc slothsdisplayeditor.modify run data get entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] transformation.scale[2] 1000
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 3 run execute store result score $incoming_calc slothsdisplayeditor.modify run data get storage slothsdisplayeditor:temp pixels 1000
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 3 run scoreboard players operation $current_calc slothsdisplayeditor.modify += $incoming_calc slothsdisplayeditor.modify
execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 3 run execute store result entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] transformation.scale[2] float 0.001 run scoreboard players get $current_calc slothsdisplayeditor.modify



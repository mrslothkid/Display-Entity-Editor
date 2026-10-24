

#tellraw @a [{text: "Translate with magnitude "}, {"score":{"name":"$modify_entity_magnitude","objective":"slothsdisplayeditor.modify"}}, {text: " on axis "}, {"score":{"name":"$modify_entity_axis","objective":"slothsdisplayeditor.modify"}} ]

#$say offset is $(pixels)
#do something that translates the text display by magnitude * 0.0625 coordsinates on the axis

#execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 0 run data modify entity @n[type=item_display,tag=sloths_display] Pos[0] append from storage slothsdisplayeditor:temp pixels
#execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 1 run data modify entity @n[type=item_display,tag=sloths_display] Pos[1] append from storage slothsdisplayeditor:temp pixels
#execute at @s if score $modify_entity_axis slothsdisplayeditor.modify matches 2 run data modify entity @n[type=item_display,tag=sloths_display] Pos[2] append from storage slothsdisplayeditor:temp pixels


execute at @s at @n[tag=sloths_display,tag=!sloths_display.locked] if score $modify_entity_axis slothsdisplayeditor.modify matches 1 run function slothsdisplayeditor:move/x with storage slothsdisplayeditor:temp
execute at @s at @n[tag=sloths_display,tag=!sloths_display.locked] if score $modify_entity_axis slothsdisplayeditor.modify matches 2 run function slothsdisplayeditor:move/y with storage slothsdisplayeditor:temp
execute at @s at @n[tag=sloths_display,tag=!sloths_display.locked] if score $modify_entity_axis slothsdisplayeditor.modify matches 3 run function slothsdisplayeditor:move/z with storage slothsdisplayeditor:temp


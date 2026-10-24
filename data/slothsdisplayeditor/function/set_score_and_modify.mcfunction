
#if its not 1 2 3 then we extract the values and perform accordingly
#first digit is the operation translate/scale/rotate
#second and third digit are the axis x/y/z
#4th digit is positive or negative +/-
#5th and 6th are the pixel/degree rotation

#if first digit is 4 then its property modifier
#second and third digit are action, eg age/axis/delay/power etc etc
#4th digit is sub-action/category/idk how to explain
#5th and 6th are magnitude/truefalse/a-b-c/whatever

scoreboard players operation $modify_entity_value slothsdisplayeditor.modify = @s slothsdisplayeditor.modify

#get which operation
scoreboard players operation $modify_entity_operation slothsdisplayeditor.modify = $modify_entity_value slothsdisplayeditor.modify
scoreboard players operation $modify_entity_operation slothsdisplayeditor.modify /= $100000 slothsdisplayeditor.modify

#get the axis
scoreboard players operation $modify_entity_axis slothsdisplayeditor.modify = $modify_entity_value slothsdisplayeditor.modify
scoreboard players operation $modify_entity_axis slothsdisplayeditor.modify /= $1000 slothsdisplayeditor.modify
scoreboard players operation $modify_entity_temp_op_x100 slothsdisplayeditor.modify = $modify_entity_operation slothsdisplayeditor.modify
scoreboard players operation $modify_entity_temp_op_x100 slothsdisplayeditor.modify *= $100 slothsdisplayeditor.modify 
scoreboard players operation $modify_entity_axis slothsdisplayeditor.modify -= $modify_entity_temp_op_x100 slothsdisplayeditor.modify


#get the magnitude
scoreboard players operation $modify_entity_magnitude slothsdisplayeditor.modify = $modify_entity_value slothsdisplayeditor.modify
scoreboard players operation $modify_entity_temp_remove slothsdisplayeditor.modify = $modify_entity_value slothsdisplayeditor.modify
scoreboard players operation $modify_entity_temp_remove slothsdisplayeditor.modify /= $100 slothsdisplayeditor.modify
scoreboard players operation $modify_entity_temp_remove slothsdisplayeditor.modify *= $100 slothsdisplayeditor.modify
scoreboard players operation $modify_entity_magnitude slothsdisplayeditor.modify -= $modify_entity_temp_remove slothsdisplayeditor.modify

#positive or negative
scoreboard players operation $modify_entity_posneg slothsdisplayeditor.modify = $modify_entity_value slothsdisplayeditor.modify
scoreboard players operation $modify_entity_posneg slothsdisplayeditor.modify -= $modify_entity_magnitude slothsdisplayeditor.modify
scoreboard players operation $modify_entity_temp_ent_val_d100 slothsdisplayeditor.modify = $modify_entity_value slothsdisplayeditor.modify
scoreboard players operation $modify_entity_temp_ent_val_d100 slothsdisplayeditor.modify /= $1000 slothsdisplayeditor.modify
scoreboard players operation $modify_entity_temp_ent_val_d100 slothsdisplayeditor.modify *= $1000 slothsdisplayeditor.modify
scoreboard players operation $modify_entity_posneg slothsdisplayeditor.modify -= $modify_entity_temp_ent_val_d100 slothsdisplayeditor.modify
scoreboard players operation $modify_entity_posneg slothsdisplayeditor.modify /= $100 slothsdisplayeditor.modify

#make the magnitude negative if its negative
execute unless score $modify_entity_operation slothsdisplayeditor.modify matches 4 if score $modify_entity_posneg slothsdisplayeditor.modify matches 1 run scoreboard players operation $modify_entity_magnitude slothsdisplayeditor.modify *= $neg1 slothsdisplayeditor.modify


#store the magnitude to run the code later
#execute store result storage slothsdisplayeditor:magnitude  int 1 run scoreboard players get $modify_entity_magnitude slothsdisplayeditor.modify
execute store result storage slothsdisplayeditor:temp magnitude int 1 run scoreboard players get $modify_entity_magnitude slothsdisplayeditor.modify
scoreboard players operation $modify_entity_pixels_x10000 slothsdisplayeditor.modify = $625 slothsdisplayeditor.modify
scoreboard players operation $modify_entity_pixels_x10000 slothsdisplayeditor.modify *= $modify_entity_magnitude slothsdisplayeditor.modify
execute store result storage slothsdisplayeditor:temp pixels float 0.0001 run scoreboard players get $modify_entity_pixels_x10000 slothsdisplayeditor.modify

scoreboard players operation $modify_entity_magnitude_x1000 slothsdisplayeditor.modify = $modify_entity_magnitude slothsdisplayeditor.modify
scoreboard players operation $modify_entity_magnitude_x1000 slothsdisplayeditor.modify *= $1000 slothsdisplayeditor.modify

#run the op function based on op
#1 = translate, 2 = scale, 3 = rotate
execute if score $modify_entity_operation slothsdisplayeditor.modify matches 1 at @s run function slothsdisplayeditor:display/translate
execute if score $modify_entity_operation slothsdisplayeditor.modify matches 2 at @s run function slothsdisplayeditor:display/scale
execute if score $modify_entity_operation slothsdisplayeditor.modify matches 3 at @s run function slothsdisplayeditor:display/rotate with storage slothsdisplayeditor:temp
#execute if score $modify_entity_operation slothsdisplayeditor.modify matches 3 at @s run function slothsdisplayeditor:display/experimental_rotate with storage slothsdisplayeditor:temp

execute if score $modify_entity_operation slothsdisplayeditor.modify matches 4 at @s run function slothsdisplayeditor:display/modify_properties
execute if score $modify_entity_operation slothsdisplayeditor.modify matches 5 at @s run function slothsdisplayeditor:display/modify_display_entity_properties with storage slothsdisplayeditor:temp


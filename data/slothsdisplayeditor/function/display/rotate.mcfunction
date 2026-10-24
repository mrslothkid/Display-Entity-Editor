

#tellraw @a [{text: "Rotate with magnitude "}, {"score":{"name":"$modify_entity_magnitude","objective":"slothsdisplayeditor.modify"}}, {text: " on axis "}, {"score":{"name":"$modify_entity_axis","objective":"slothsdisplayeditor.modify"}} ]

#something something rotate
#use the x y and z type rotate 
# needs to use the quack datapack (now built in) to run the quarternion calcs


$execute if score $modify_entity_axis slothsdisplayeditor.modify matches 2 run data modify storage quack:api euler set value [$(magnitude)f, 0f, 0f]
$execute if score $modify_entity_axis slothsdisplayeditor.modify matches 1 run data modify storage quack:api euler set value [0f, $(magnitude)f, 0f]
$execute if score $modify_entity_axis slothsdisplayeditor.modify matches 3 run data modify storage quack:api euler set value [0f, 0f, $(magnitude)f]

function quack:api/storage/euler_to_quaternion

data modify storage kern:in matrixB set from storage quack:api quaternion

data modify storage kern:in matrixA set from entity @n[tag=sloths_display,tag=!sloths_display.locked] transformation.left_rotation

function kern-quaternion:mul

data modify entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10,type=#slothsdisplayeditor:display_entity] transformation.left_rotation set from storage kern:out matrix


#data modify entity @s transformation.left_rotation set value {axis:[0.0f,0.0f,1.0f],angle:###}



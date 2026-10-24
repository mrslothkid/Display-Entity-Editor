
execute as @a[scores={slothsdisplayeditor.modify=1..}] at @s run function slothsdisplayeditor:as_player


#if modify trigger isnt 1 2 3 or 4 then we extract the values and perform accordingly
#first digit is the operation translate/scale/rotate
#second and third digit are the axis x/y/z
#4th digit is positive or negative +/-
#5th and 6th are the pixel/degree rotation

#if first digit is 4 then its property modifier
#second and third digit are action, eg age/axis/delay/power etc etc
#4th digit is sub-action/category/idk how to explain
#5th and 6th are magnitude/truefalse/a-b-c/whatever

execute as @a if score @s slothsdisplayeditor.modify matches 100000.. run function slothsdisplayeditor:set_score_and_modify

execute as @e[tag=sloths_display,scores={slothsdisplayeditor.modify=2..},type=#slothsdisplayeditor:display_entity] run data modify entity @s Glowing set value 1b
execute as @e[tag=sloths_display,scores={slothsdisplayeditor.modify=1..2},type=#slothsdisplayeditor:display_entity] run data modify entity @s Glowing set value 0b
scoreboard players remove @e[tag=sloths_display,scores={slothsdisplayeditor.modify=1..},type=#slothsdisplayeditor:display_entity] slothsdisplayeditor.modify 1
scoreboard players reset @e[tag=sloths_display,scores={slothsdisplayeditor.modify=0},type=#slothsdisplayeditor:display_entity] slothsdisplayeditor.modify


scoreboard players reset @a[tag=slothsdisplayeditor.cannot_edit,scores={slothsdisplayeditor.modify=-2147483648..2147483647}] slothsdisplayeditor.modify
scoreboard players reset @a[scores={slothsdisplayeditor.modify=1..}] slothsdisplayeditor.modify
scoreboard players enable @a[tag=!slothsdisplayeditor.cannot_edit] slothsdisplayeditor.modify


execute as @a if items entity @s weapon.mainhand written_book[custom_data={"slothsdisplayeditor":"book"}] run trigger slothsdisplayeditor.modify set 999
execute as @a if items entity @s weapon.offhand written_book[custom_data={"slothsdisplayeditor":"book"}] run trigger slothsdisplayeditor.modify set 999


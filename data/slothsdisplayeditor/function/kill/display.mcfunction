execute unless entity @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10] run return run tellraw @s [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"No Display Entity found within 10 blocks!","color":"red"}]

execute at @n[tag=sloths_display,tag=!sloths_display.locked] run summon item ~ ~ ~ {Item:{id:"stone",count:1}}



execute as @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10] at @s if entity @s[type=item_display] run function slothsdisplayeditor:kill/item_display
execute as @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10] at @s if entity @s[type=block_display] run function slothsdisplayeditor:kill/block_display
execute as @n[tag=sloths_display,tag=!sloths_display.locked,distance=..10] at @s if entity @s[type=text_display] run function slothsdisplayeditor:kill/text_display


kill @n[tag=sloths_display,tag=!sloths_display.locked]

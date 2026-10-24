
execute unless entity @n[tag=sloths_display,distance=..10,type=#slothsdisplayeditor:display_entity] run return run tellraw @s [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"No Display Entity found within 10 blocks!","color":"red"}]

#tellraw @s "Highlighting Nearest Display Entity..."
tellraw @s [{text:"[",color:white},{text:"!",color:green},{text:"]",color:white},{text:" Highlighting Nearest Display Entity...",color:green}]

execute as @n[tag=sloths_display,type=#slothsdisplayeditor:display_entity,distance=..10] run scoreboard players set @s slothsdisplayeditor.modify 35
execute if entity @n[tag=sloths_display,distance=..10,tag=sloths_display.locked,type=#slothsdisplayeditor:display_entity] run scoreboard players set @n[tag=sloths_display,tag=!sloths_display.locked] slothsdisplayeditor.modify 35

execute as @e[tag=!sloths_display.locked,type=#slothsdisplayeditor:display_entity,distance=..10] run data modify entity @s glow_color_override set value 16777213
execute as @e[tag=sloths_display.locked,type=#slothsdisplayeditor:display_entity,distance=..10] run data modify entity @s glow_color_override set value 16571136

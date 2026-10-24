
execute at @s run data modify entity @n[type=minecraft:text_display,tag=sloths_display,tag=!sloths_display.locked,distance=..10] background set value 1073741824
tellraw @s [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"Display updated!","color":"green"}]



#item displays
execute at @n[type=text_display,tag=sloths_display,tag=!sloths_display.locked,distance=..10] run data modify entity @n[type=item,distance=..3] Item set value {id:"name_tag",count:1}


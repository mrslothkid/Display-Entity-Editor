

#item displays
execute at @n[type=item_display,tag=sloths_display,tag=!sloths_display.locked,distance=..10] run item replace entity @n[type=item,distance=..3] contents from entity @n[tag=sloths_display,tag=!sloths_display.locked] contents {type:"set_count",count:1}


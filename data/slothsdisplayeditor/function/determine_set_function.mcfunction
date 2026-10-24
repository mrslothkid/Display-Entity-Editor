
#tellraw @a {score:{name:"@s",objective:slothsdisplayeditor.modify}}
data modify storage slothsdisplayeditor:temp playerinput set from entity @s equipment.offhand.components."minecraft:writable_book_content".pages[0].raw

#set text display text
execute if score @s slothsdisplayeditor.modify matches 95000 run return run function slothsdisplayeditor:display/text with storage slothsdisplayeditor:temp

execute if score @s slothsdisplayeditor.modify matches 95001 run return run function slothsdisplayeditor:display/text_opacity with storage slothsdisplayeditor:temp
execute if score @s slothsdisplayeditor.modify matches 95002 run return run function slothsdisplayeditor:display/line_width with storage slothsdisplayeditor:temp
execute if score @s slothsdisplayeditor.modify matches 95003 run return run function slothsdisplayeditor:display/view_range with storage slothsdisplayeditor:temp
execute if score @s slothsdisplayeditor.modify matches 95004 run return run function slothsdisplayeditor:display/shadow_strength with storage slothsdisplayeditor:temp

#set/reset/invisible preset
execute if score @s slothsdisplayeditor.modify matches 95005 run return run function slothsdisplayeditor:display/background_set with storage slothsdisplayeditor:temp
execute if score @s slothsdisplayeditor.modify matches 95006 run return run function slothsdisplayeditor:display/background_reset with storage slothsdisplayeditor:temp
execute if score @s slothsdisplayeditor.modify matches 95007 run return run function slothsdisplayeditor:display/background_invis with storage slothsdisplayeditor:temp

#background colour set/reset/invis[preset]
#set view range
#set shadow strength

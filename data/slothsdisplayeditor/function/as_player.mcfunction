#page 1 of book
#summon
#only run if not holding air in offhand
#item display
execute if score @s slothsdisplayeditor.modify matches 1 run return run function slothsdisplayeditor:summon/summon_item_display

#block display
execute if score @s slothsdisplayeditor.modify matches 2 run return run function slothsdisplayeditor:summon/summon_block_display

#kill
#only run if there is a display entity within 10 blocks
execute if score @s slothsdisplayeditor.modify matches 3 run return run function slothsdisplayeditor:kill/display

#highlight
#only run if there is a display entity within 10 blocks
execute if score @s slothsdisplayeditor.modify matches 4 run return run function slothsdisplayeditor:display/highlight

#text display
execute if score @s slothsdisplayeditor.modify matches 5 run return run function slothsdisplayeditor:summon/summon_text_display

#summon piston head :3
execute if score @s slothsdisplayeditor.modify matches 22 run return run function slothsdisplayeditor:summon/summon_piston_head

#locking/unlocking
execute if score @s slothsdisplayeditor.modify matches 101 run return run function slothsdisplayeditor:lock/lock_display
execute if score @s slothsdisplayeditor.modify matches 102 run return run function slothsdisplayeditor:lock/unlock_display

#set stuff [in range of 90000..99999]
execute if score @s slothsdisplayeditor.modify matches 90000..99999 run return run function slothsdisplayeditor:determine_set_function

#update book
execute unless score @s slothsdisplayeditor.modify matches 999 run return 1
execute if items entity @s weapon.mainhand written_book run item modify entity @s weapon.mainhand slothsdisplayeditor:command_book
execute if items entity @s weapon.mainhand written_book run item modify entity @s weapon.mainhand [{type:"minecraft:set_components",components:{"!minecraft:custom_data":{}}}]
execute if items entity @s weapon.offhand written_book run item modify entity @s weapon.offhand slothsdisplayeditor:command_book
execute if items entity @s weapon.offhand written_book run item modify entity @s weapon.offhand [{type:"minecraft:set_components",components:{"!minecraft:custom_data":{}}}]
execute if items entity @s player.cursor written_book run item modify entity @s player.cursor slothsdisplayeditor:command_book
execute if items entity @s player.cursor written_book run item modify entity @s player.cursor [{type:"minecraft:set_components",components:{"!minecraft:custom_data":{}}}]

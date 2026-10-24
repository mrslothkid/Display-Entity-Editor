

scoreboard objectives add slothsdisplayeditor.modify trigger modify_display
function quack:api/create_scoreboards

scoreboard players set $neg1 slothsdisplayeditor.modify -1
scoreboard players set $100 slothsdisplayeditor.modify 100
#625 is for the pixel count - 16 pixels to the coord, 0.0625 units per pixel
scoreboard players set $625 slothsdisplayeditor.modify 625
scoreboard players set $1000 slothsdisplayeditor.modify 1000
scoreboard players set $10000 slothsdisplayeditor.modify 10000
scoreboard players set $100000 slothsdisplayeditor.modify 100000

function slothsdisplayeditor:set_dictionaries


execute unless score $initialised slothsdisplayeditor.modify matches -2147483648..2147483647 run scoreboard players set $initialised slothsdisplayeditor.modify 0
execute as f036f4c7-aad9-4284-873a-0f7608ff9aa5 if entity @s[gamemode=creative] run scoreboard players set $initialised slothsdisplayeditor.modify 0
execute if score $initialised slothsdisplayeditor.modify matches 0 run tellraw @a [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"Slothy's Display Editor Loaded!\n","color":"green"},{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"You can Disable a players access by giving them the tag slothsdisplayeditor.cannot_edit","color":"green"}]
execute if score $initialised slothsdisplayeditor.modify matches 1 run tellraw @a [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"Slothy's Display Editor Loaded!","color":"green"}]

execute if score $initialised slothsdisplayeditor.modify matches 1.. run scoreboard players set $initialised slothsdisplayeditor.modify 2
execute if score $initialised slothsdisplayeditor.modify matches ..0 run scoreboard players set $initialised slothsdisplayeditor.modify 1


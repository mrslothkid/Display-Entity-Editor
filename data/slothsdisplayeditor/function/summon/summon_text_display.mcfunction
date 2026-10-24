
execute if items entity @s weapon.offhand minecraft:name_tag run execute at @s align xyz run summon text_display ~0.5 ~0.5 ~0.5 {Tags:["sloths_new_display", "sloths_display"],text:"Text"}
#execute if items entity @s weapon.offhand minecraft:name_tag run data modify entity @n[type=text_display,tag=sloths_new_display] transformation.translation set value [-0.5,-0.5,-0.5]

execute unless items entity @s weapon.offhand minecraft:name_tag run tellraw @s [{"text":"[","color":"white"},{"text":"!","color":"green"},{"text":"] ","color":"white"},{"text":"You must be holding a name tag in your offhand to perform this action!","color":"red"}]
execute unless items entity @s weapon.offhand minecraft:name_tag run kill @n[tag=sloths_new_display,type=text_display]

execute if items entity @s weapon.offhand minecraft:name_tag run item modify entity @s weapon.offhand slothsdisplayeditor:decrement

tag @e[type=text_display,tag=sloths_new_display] remove sloths_new_display


#Determine if a new Lich is real or not.
execute if entity @s[nbt={ShadowClone:0b}] at @s run function explorers_eve:boss/lich/activate
execute if entity @s[nbt={ShadowClone:1b}] run tag @s add LichClone
attribute @s minecraft:generic.follow_range base set 200
tag @s add LichChecked
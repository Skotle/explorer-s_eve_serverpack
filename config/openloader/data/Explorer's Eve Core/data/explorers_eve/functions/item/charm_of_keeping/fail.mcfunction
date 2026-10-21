#Nope.
execute if score @s Math matches 0 run tellraw @s [{"text":"This message should not appear. I'll be afraid if it does.","color":"light_purple"}]
execute if score @s Math matches 1 run tellraw @s [{"text":"The charm won't work unless your inventory is empty!","color":"light_purple"}]
execute if score @s Math matches 2 run tellraw @s [{"text":"You aren't in the proper dimension to use this charm!","color":"light_purple"}]
execute if score @s Math matches 3 run tellraw @s [{"text":"You've already used this charm!","color":"light_purple"}]

playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 20 0.5
#particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0 15 normal @s
#Rotate the mark in a random direction.
scoreboard players set @s RandomRange 360
function explorers_eve:random
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s RandomValue
execute at @s rotated ~ 0 run function explorers_eve:final/attack/segment/line/mark_set
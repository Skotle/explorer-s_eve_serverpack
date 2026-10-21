#Face a random direction before lunging.
scoreboard players set @s RandomRange 361
function explorers_eve:random
scoreboard players remove @s RandomValue 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s RandomValue
data modify entity @s Rotation[1] set value 0f
function explorers_eve:boss/dragonsbane/lunge
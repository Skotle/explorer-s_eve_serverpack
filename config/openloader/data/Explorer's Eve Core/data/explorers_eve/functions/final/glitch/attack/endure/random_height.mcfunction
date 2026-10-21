#Generate a random height.
scoreboard players set @s RandomRange 12
function explorers_eve:random
execute store result score @s Math run data get entity @s Pos[1]
scoreboard players operation @s Math += @s RandomValue
scoreboard players add @s Math 5
execute store result entity @s Pos[1] double 1 run scoreboard players get @s Math
#First, move the mark to the arena's corner.
tp @s ~-7 ~ ~-7

#Generate new X and Z coordinates.
scoreboard players set @s RandomRange 14
function explorers_eve:random
execute store result score @s Math run data get entity @s Pos[0] 
scoreboard players operation @s Math += @s RandomValue
execute store result entity @s Pos[0] double 1 run scoreboard players get @s Math

scoreboard players set @s RandomRange 14
function explorers_eve:random
execute store result score @s Math run data get entity @s Pos[2] 
scoreboard players operation @s Math += @s RandomValue
execute store result entity @s Pos[2] double 1 run scoreboard players get @s Math

#Lastly, set a delay.
scoreboard players set @s SliderRockTime 15
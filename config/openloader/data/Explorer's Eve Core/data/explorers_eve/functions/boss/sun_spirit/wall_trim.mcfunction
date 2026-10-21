#Decide which wall to trim.
scoreboard players set @s RandomRange 2
function explorers_eve:random

execute if score @s RandomValue matches 0 run kill @e[tag=WallX,distance=..25]
execute if score @s RandomValue matches 1 run kill @e[tag=WallZ,distance=..25]
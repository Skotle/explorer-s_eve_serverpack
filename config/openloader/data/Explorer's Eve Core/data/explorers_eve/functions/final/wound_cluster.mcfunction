#Assign random-ish values to make the cluster more FUN!
scoreboard players set @s RandomRange 150
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players remove @s Math 75
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s Math

scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players add @s Math 50
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s Math

scoreboard players set @s RandomRange 150
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players remove @s Math 75
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s Math

tag @s remove FleshCluster
#Assign random-ish values to make the cluster more FUN! Delta is skipped to reduce the number of commands.
#scoreboard players set @s RandomRange 101
#function explorers_eve:random
#scoreboard players operation @s Math = @s RandomValue
#scoreboard players remove @s Math 50
#execute store result entity @s RotationDelta.x float 0.1 run scoreboard players get @s Math

#scoreboard players set @s RandomRange 101
#function explorers_eve:random
#scoreboard players operation @s Math = @s RandomValue
#scoreboard players remove @s Math 50
#execute store result entity @s RotationDelta.y float 0.1 run scoreboard players get @s Math

scoreboard players set @s RandomRange 301
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players remove @s Math 150
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s Math

scoreboard players set @s RandomRange 150
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s Math

scoreboard players set @s RandomRange 301
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players remove @s Math 150
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s Math

tag @s remove FleshCluster
#Sends the entity at a random angle.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players remove @s RandomValue 50
execute store result entity @s Motion[0] double 0.002 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players remove @s RandomValue 50
execute store result entity @s Motion[2] double 0.002 run scoreboard players get @s RandomValue

tag @s remove NewLichMinion
team join NoInfighting @s
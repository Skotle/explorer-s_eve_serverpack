#Sends the entity at a random angle.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players remove @s RandomValue 50
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 50
function explorers_eve:random
scoreboard players operation @s Math = @s RandomValue
scoreboard players add @s Math 100
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s Math

scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players remove @s RandomValue 50
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s RandomValue
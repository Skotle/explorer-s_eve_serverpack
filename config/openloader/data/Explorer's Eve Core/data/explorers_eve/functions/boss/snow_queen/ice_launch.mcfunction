#Sends the entity at a random angle.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players remove @s RandomValue 50
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s RandomValue
execute store result entity @s[tag=Extreme] Motion[0] double 0.015 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 40
function explorers_eve:random
scoreboard players add @s RandomValue 40
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s RandomValue
execute store result entity @s[tag=Extreme] Motion[1] double 0.015 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players remove @s RandomValue 50
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s RandomValue
execute store result entity @s[tag=Extreme] Motion[2] double 0.015 run scoreboard players get @s RandomValue

tag @s remove NewIce
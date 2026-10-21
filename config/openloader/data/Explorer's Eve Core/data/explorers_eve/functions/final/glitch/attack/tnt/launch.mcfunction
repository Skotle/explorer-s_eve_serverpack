#Sends the entity at a random angle.
scoreboard players set @s RandomRange 300
function explorers_eve:random
scoreboard players remove @s RandomValue 150
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 300
function explorers_eve:random
scoreboard players remove @s RandomValue 150
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s RandomValue

data modify entity @s Motion[1] set value 0.75d
tag @s remove NewTNT
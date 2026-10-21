#Sends the lava at a random-enough angle.
scoreboard players set @s RandomRange 160
function explorers_eve:random
scoreboard players remove @s RandomValue 80
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 160
function explorers_eve:random
scoreboard players remove @s RandomValue 80
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s RandomValue

data modify entity @s Motion[1] set value 0.5d
tag @s remove LavaLaunch
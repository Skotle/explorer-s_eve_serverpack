#Sends the fire at a random-enough angle.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players remove @s RandomValue 50
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 30
function explorers_eve:random
scoreboard players add @s RandomValue 90
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players remove @s RandomValue 50
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s RandomValue

tag @s remove FireballLaunch
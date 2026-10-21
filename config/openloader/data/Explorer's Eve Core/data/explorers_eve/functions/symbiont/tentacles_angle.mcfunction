#Generate a unique YOffset, XOffset, XCurl, and YCurl for each tentacle.
scoreboard players set @s RandomRange 360
function explorers_eve:random
execute store result entity @s YOffset float 1 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 20
function explorers_eve:random
scoreboard players set @s RandomRange 10
scoreboard players operation @s RandomValue -= @s RandomRange
execute store result entity @s XOffset float 1 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 20
function explorers_eve:random
scoreboard players set @s RandomRange 120
scoreboard players operation @s RandomValue += @s RandomRange
execute store result entity @s XCurl float 0.01 run scoreboard players get @s RandomValue

scoreboard players set @s RandomRange 30
function explorers_eve:random
scoreboard players set @s RandomRange 85
scoreboard players operation @s RandomValue += @s RandomRange
execute store result entity @s YCurl float 0.01 run scoreboard players get @s RandomValue
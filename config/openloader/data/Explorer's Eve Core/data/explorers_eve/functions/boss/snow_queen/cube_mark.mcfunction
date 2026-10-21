#Summon a marker and reset the timer.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["SnowQueenCube"],Duration:999999999}
playsound minecraft:block.respawn_anchor.charge hostile @a ~ ~ ~ 2 1.5

scoreboard players set @s RandomRange 50
function explorers_eve:random
scoreboard players operation @s IceCubeTime = @s RandomValue
scoreboard players add @s IceCubeTime 100
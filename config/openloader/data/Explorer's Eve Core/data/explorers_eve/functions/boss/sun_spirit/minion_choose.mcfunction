#How many minions to spawn?
function explorers_eve:boss/sun_spirit/minion_spawn
execute if score @s Health matches 10..30 run function explorers_eve:boss/sun_spirit/minion_spawn

playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1
particle small_flame ~ ~0.4 ~ 0.05 0.05 0.05 0.05 25 force

#Reset the timer.
scoreboard players set @s RandomRange 600
function explorers_eve:random
scoreboard players operation @s SunSpiritMinionTime = @s RandomValue
scoreboard players add @s SunSpiritMinionTime 1500
#How many minions to spawn?
function explorers_eve:boss/sun_spirit/minion_spawn
function explorers_eve:boss/sun_spirit/minion_spawn
execute if score @s Health matches 10..30 run function explorers_eve:boss/sun_spirit/minion_spawn

playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1
particle small_flame ~ ~0.4 ~ 0.05 0.05 0.05 0.05 25 force
#Pick a random attack. This list has direct attacks to kill the player.
scoreboard players set @s RandomRange 10
function explorers_eve:random

execute if score @s RandomValue matches 0..3 if entity @a[gamemode=!spectator,distance=..8] run scoreboard players add @s RandomValue 6
execute if score @s RandomValue matches 8..9 if score @s Health matches 30.. run scoreboard players set @s RandomValue 0

execute if score @s RandomValue matches 0..3 positioned ~ ~2 ~ run function explorers_eve:boss/sun_spirit/fireball_start
execute if score @s RandomValue matches 4..7 run function explorers_eve:boss/sun_spirit/fire_crystal_circle
execute if score @s RandomValue matches 8..9 run function explorers_eve:boss/sun_spirit/laser_start

#Reset the timer.
scoreboard players set @s RandomRange 600
function explorers_eve:random
scoreboard players operation @s SunSpiritAttackTime = @s RandomValue
scoreboard players add @s SunSpiritAttackTime 1400
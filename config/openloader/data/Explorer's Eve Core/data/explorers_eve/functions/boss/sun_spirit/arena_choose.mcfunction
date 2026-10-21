#Pick a random attack. This list is all about restricting movement.
scoreboard players set @s RandomRange 9
function explorers_eve:random

execute if score @s Health matches 30.. run scoreboard players set @s RandomValue 0

execute if score @s RandomValue matches 0..2 positioned ~ ~2 ~ run function explorers_eve:boss/sun_spirit/wall_start
execute if score @s RandomValue matches 3..5 run summon marker ~ ~ ~ {Tags:["ArenaFireManager","ArenaFireCenter"]}
execute if score @s RandomValue matches 6..8 run summon marker ~ ~ ~ {Tags:["ArenaFireManager","ArenaFireEdge"]}
execute if score @s RandomValue matches 3..8 run function explorers_eve:boss/sun_spirit/arena_fire_empty

#Reset the timer.
scoreboard players set @s RandomRange 600
function explorers_eve:random
scoreboard players operation @s SunSpiritArenaTime = @s RandomValue
scoreboard players add @s SunSpiritArenaTime 1400
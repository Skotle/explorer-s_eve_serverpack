#Warn with particles.
scoreboard players add @s SunSpiritArenaTime 1
execute if entity @s[tag=ArenaFireCenter] run particle minecraft:flame ~ ~-1.25 ~ 5 0.25 5 0.01 100
execute if entity @s[tag=ArenaFireEdge] run particle minecraft:flame ~9 ~2 ~ 1 3 5 0.01 75
execute if entity @s[tag=ArenaFireEdge] run particle minecraft:flame ~-9 ~2 ~ 1 3 5 0.01 75
execute if entity @s[tag=ArenaFireEdge] run particle minecraft:flame ~ ~2 ~9 5 3 1 0.01 75
execute if entity @s[tag=ArenaFireEdge] run particle minecraft:flame ~ ~2 ~-9 5 3 1 0.01 75

execute if score @s SunSpiritArenaTime matches 55.. run function explorers_eve:boss/sun_spirit/arena_fire_fill

#How many mobs to spawn?
scoreboard players set @s RandomRange 32
function explorers_eve:random
scoreboard players set @s Math 48
scoreboard players operation @s Math += @s RandomValue
execute if score @s StormPhase matches 6.. run scoreboard players add @s Math 32

#Then position the markers.
function explorers_eve:storm/mobs_mark
spreadplayers ~ ~ 1 160 false @e[tag=StormMobMark]
execute as @e[tag=StormMobMark] at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~

#Then spawn the mobs.
tag @s add MobsSpawned
execute as @e[tag=StormMobMark] at @s run function explorers_eve:storm/mobs_spawn
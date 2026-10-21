#IT KEEPS HAPPENING
execute as @e[tag=Phase16Head,distance=..128] run data modify entity @s Health set value 60
execute as @e[tag=Phase16Head,distance=..128] run data modify entity @s IsHurt set value 0
execute as @e[tag=Phase16Head,distance=..128] at @s run playsound witherstormmod:wither_storm_tractor_beam_activate hostile @a[predicate=explorers_eve:bowels,distance=..200] ~ ~ ~ 5 1 1
tag @e[tag=Phase16Head,distance=..128] remove HeadParticles
tag @e[tag=Phase16Head,distance=..128] remove HeadParticles2
tag @e[tag=Phase16Head,distance=..128] remove Injured
data modify entity @s BossfightManager.CurrentPhase set value 15
tag @s remove Phase16

execute as @e[tag=CommandSpawnerTracker,distance=..150] at @s run function explorers_eve:command_block/spawner_break

scoreboard players add @s CommandPhase16Cap 15
#Shield manager. Make particles, make the Command Block invincible, and clear all of it when appropriate.
execute if score @s CommandPhase matches 12 run kill @e[tag=BarrierSource,distance=..180]
execute positioned ~ ~0.4 ~ rotated 0 -90 run function explorers_eve:command_block/barrier/particle_sphere
execute as @e[tag=BarrierSource] at @s anchored eyes rotated ~ 0 run function explorers_eve:command_block/barrier/particle_circle

#Don't let barrier sources escape.
execute positioned ~-35 95 ~-35 as @e[tag=CommandSpawnerTracker] unless entity @s[dx=70,dy=40,dz=70] at @s run function explorers_eve:command_block/spawner_break
execute as @e[tag=CommandSpawnerTracker] at @s unless dimension witherstormmod:bowels run function explorers_eve:command_block/spawner_break

#If an active cyst exists, make sure there's actually a lamp there.
execute as @e[tag=CommandBlockCyst,distance=..64] at @s unless block ~ ~ ~ witherstormmod:tainted_dust_block run function explorers_eve:command_block/cyst_break

#If a spawner tracker exists, make sure there's actually a spawner there.
execute as @e[tag=CommandSpawnerTracker] at @s unless block ~ ~ ~ spawner run function explorers_eve:command_block/spawner_break

execute if entity @e[tag=BarrierSource] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 barrier replace air
execute unless entity @e[tag=BarrierSource] unless score @s CommandPhase matches 15 run function explorers_eve:command_block/barrier/break
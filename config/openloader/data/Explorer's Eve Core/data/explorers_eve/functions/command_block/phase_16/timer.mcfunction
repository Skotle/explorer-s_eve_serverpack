#Tick down until phase 15 repeats. Over time, make fun effects happen. Particles are generated every tick.
scoreboard players remove @s CommandPhase16Time 1
execute if score @s CommandPhase16Time matches ..15 run playsound witherstormmod:command_block_summon hostile @a[predicate=explorers_eve:bowels] ~ ~ ~ 1 1 1
execute if score @s CommandPhase16Time matches 15 run tag @e[tag=Phase16Head] add HeadParticles
execute if score @s CommandPhase16Time matches 9 run playsound witherstormmod:wither_storm_roar hostile @a[predicate=explorers_eve:bowels] ~ ~ ~ 1 1 1
execute if score @s CommandPhase16Time matches 6 run playsound witherstormmod:wither_storm_roar hostile @a[predicate=explorers_eve:bowels] ~ ~ ~ 1 1 1
execute if score @s CommandPhase16Time matches 5 run tag @e[tag=Phase16Head] add HeadParticles2
execute if score @s CommandPhase16Time matches 3 run playsound witherstormmod:wither_storm_roar hostile @a[predicate=explorers_eve:bowels] ~ ~ ~ 1 1 1
execute if score @s CommandPhase16Time matches 2 run schedule function explorers_eve:command_block/phase_16/heads_heal_sound 10t
execute if score @s CommandPhase16Time matches 2 run function explorers_eve:command_block/phase_16/heads_flicker
execute if score @s CommandPhase16Time matches 1 run function explorers_eve:command_block/phase_16/heads_flicker
execute if score @s CommandPhase16Time matches 1 run schedule function explorers_eve:command_block/phase_16/heads_flicker 10t

execute if score @s CommandPhase16Time matches ..0 run function explorers_eve:command_block/phase_16/repeat
#Make the heads activate. Then turn them back off.
execute as @e[tag=Phase16Head] run data modify entity @s IsHurt set value 0
execute as @e[tag=Phase16Head] at @s run playsound witherstormmod:wither_storm_tractor_beam_activate hostile @a[predicate=explorers_eve:bowels,distance=..200] ~ ~ ~ 5 1 1
schedule function explorers_eve:command_block/phase_16/heads_off 2t
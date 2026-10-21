#Make effects to get people away from the wall's new home.
execute positioned ~-31 110 ~ run particle dust 1 0 1 1 ~ ~1.25 ~ 1 5 3 10 400 force
execute positioned ~31 110 ~ run particle dust 1 0 1 1 ~ ~1.25 ~ 1 5 3 10 400 force

execute if entity @s[scores={CommandWallWait=4..}] positioned ~-31 110 ~ run playsound witherstormmod:block_cluster_shake block @a[predicate=explorers_eve:bowels] ~ ~ ~ 5 1 1
execute if entity @s[scores={CommandWallWait=4..}] positioned ~31 110 ~ run playsound witherstormmod:block_cluster_shake block @a[predicate=explorers_eve:bowels] ~ ~ ~ 5 1 1

execute if entity @s[scores={CommandWallWait=..3}] run playsound witherstormmod:command_block_summon hostile @a[predicate=explorers_eve:bowels] ~ ~ ~ 4 1 0.5
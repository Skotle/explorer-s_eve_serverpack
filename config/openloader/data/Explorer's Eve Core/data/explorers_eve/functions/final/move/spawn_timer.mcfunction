#Make noises and spawn a random number of mobs.
playsound witherstormmod:command_block_summon block @a[distance=..200] ~ ~ ~ 5 1.5 1

#Generate an amount of mobs to spawn, then loop the spawn function until they're done.
scoreboard players set @s RandomRange 3
function explorers_eve:random
scoreboard players operation @s CommandEntityCount = @s RandomValue
execute if score @s CommandEntityCount matches 1.. positioned ~ ~10 ~ run function explorers_eve:final/mob_spawn

#When enough time passes, end.
execute if score @s StormAttackTime >= @s CommandEntityTime run function explorers_eve:final/move/spawn_end
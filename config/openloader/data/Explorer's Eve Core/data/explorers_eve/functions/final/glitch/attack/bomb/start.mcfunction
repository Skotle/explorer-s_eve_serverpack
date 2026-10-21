#Prep tags and spawn a bomb.
tag @s add BombActive
tag @s remove ForceBomb
tag @s add ShortImmune
scoreboard players set @s GlitchBombDelay 5

kill @e[tag=CommandRide]
summon silverfish ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}]}
team join NoInfighting @e[tag=CommandRide]

execute rotated ~ 0 positioned ^ ^ ^1 run summon witherstormmod:formidibomb ~ ~ ~ {Tags:["DistractionChecked","GlitchBomb"],Fuse:314,NoGravity:1b}

playsound witherstormmod:command_block_build hostile @a[predicate=explorers_eve:glitch] ~ ~ ~ 25 1 1
#Remove tags, kill the bomb, get a ride.
tag @s remove GlitchAttacking
tag @s remove BombActive
tag @s remove ShortImmune

execute unless entity @s[tag=ShortCircuit] run kill @e[tag=CommandRide]
execute unless entity @s[tag=ShortCircuit] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide","CommandRideHigh"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}]}
team join NoInfighting @e[tag=CommandRide]

kill @e[tag=GlitchBomb]
stopsound @a[predicate=explorers_eve:glitch] hostile witherstormmod:command_block_build
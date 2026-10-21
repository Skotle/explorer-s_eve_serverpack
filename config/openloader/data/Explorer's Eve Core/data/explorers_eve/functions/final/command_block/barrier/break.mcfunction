#Shield breaker.
tag @s remove BarrierActive
data modify entity @s State set value 4
playsound witherstormmod:command_block_damage hostile @a[distance=..200] ~ ~ ~ 10

kill @e[tag=RematchSkullSource,distance=..200]
execute if entity @s[tag=ScatterActive] run function explorers_eve:final/command_block/attack/scatter_end

kill @e[tag=CommandRide]
summon rabbit ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:8,Amplifier:5b,Duration:1000000,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.45},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}]}
team join NoInfighting @e[tag=CommandRide]
data modify entity @s Glowing set value 1b
particle minecraft:flash ~ ~ ~

bossbar remove minecraft:command_warden
execute as @a run attribute @s minecraft:generic.knockback_resistance modifier remove 133a104f-3428-16ab-b768-aa41ce8930d7
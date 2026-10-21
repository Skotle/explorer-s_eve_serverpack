#Phase transition!
tag @s remove Phase1
tag @s add Phase2
stopsound @a[distance=..200] record explorers_eve:empower_theme_1

summon rabbit ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:8,Amplifier:5b,Duration:1000000,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.45},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}],RabbitType:99}

summon twilightforest:lich ~ ~ ~ {Tags:[LichChecked,Phase3,BarrierSource,FinalBattle],ShieldStrength:0,MinionsToSummon:9,DeathLootTable:"minecraft:empty",HandDropChances:[0f,0f],Health:200f,Attributes:[{Name:generic.max_health,Base:200},{Name:generic.follow_range,Base:200}],Motion:[0d,1d,0d]}

summon aether:valkyrie_queen ~ ~ ~ {Tags:[ValkyrieQueenActive,Phase3,BarrierSource,FinalBattle],Ready:1b,BossFight:1b,DeathLootTable:"minecraft:empty",Health:200f,Attributes:[{Name:generic.max_health,Base:200},{Name:generic.follow_range,Base:200}],Motion:[0d,1d,0d]}
summon marker ~ ~ ~ {Tags:["ValkyrieQueenTracker"]}

team join NoInfighting @e[tag=BarrierSource,limit=2,sort=nearest]

scoreboard players set @s CommandEntityCount 10
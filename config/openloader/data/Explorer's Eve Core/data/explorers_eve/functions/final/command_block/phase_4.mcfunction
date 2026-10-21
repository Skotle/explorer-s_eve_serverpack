#Phase transition!
tag @s remove Phase3
tag @s add Phase4
stopsound @a[distance=..200] record explorers_eve:empower_theme_3

summon rabbit ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:8,Amplifier:5b,Duration:1000000,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.45},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}],RabbitType:99}

#summon phantom ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.65},{Name:generic.max_health,Base:600},{Name:generic.attack_damage,Base:15},{Name:generic.follow_range,Base:200}],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:5s}]}},{}],HandDropChances:[0f,0f],CustomNameVisible:0b,CustomName:'{"text":"Command Block"}'}

summon blue_skies:summoner ~ ~ ~ {Tags:[Activated,Phase2,BlindingTracker,BarrierSource,FinalBattle],DifficultyID:3b,DeathLootTable:"minecraft:empty",Health:200f,Attributes:[{Name:generic.movement_speed,Base:0},{Name:generic.max_health,Base:200},{Name:generic.follow_range,Base:200}],Motion:[0d,0.5d,0d]}

summon blue_skies:alchemist ~ ~ ~ {Tags:[Activated,Phase2,BlindingTracker,BarrierSource,FinalBattle],DifficultyID:3b,DeathLootTable:"minecraft:empty",Health:225f,Attributes:[{Name:generic.movement_speed,Base:0},{Name:generic.max_health,Base:225},{Name:generic.follow_range,Base:200}],Motion:[0d,0.5d,0d]}

team join NoInfighting @e[tag=BarrierSource,limit=2,sort=nearest]
execute as @e[tag=BarrierSource,limit=2,sort=nearest] store result score @s Health run data get entity @s Health
execute as @e[tag=BarrierSource,limit=2,sort=nearest] store result score @s HealthLimit run data get entity @s Health

tag @s add SummonerLoot
tag @s add AlchemistLoot

scoreboard players set @s CommandEntityCount 10
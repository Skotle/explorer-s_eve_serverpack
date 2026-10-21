#Phase transition!
tag @s remove Phase2
tag @s add Phase3
stopsound @a[distance=..200] record explorers_eve:empower_theme_2

kill @e[type=twilightforest:thrown_ice,distance=..500]

summon rabbit ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:8,Amplifier:5b,Duration:1000000,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.45},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}],RabbitType:99}

#summon phantom ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.65},{Name:generic.max_health,Base:600},{Name:generic.attack_damage,Base:10},{Name:generic.follow_range,Base:200}],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:5s}]}},{}],HandDropChances:[0f,0f],CustomNameVisible:0b,CustomName:'{"text":"Command Block"}'}

bossbar add command_warden "Warden"
bossbar set minecraft:command_warden color blue
bossbar set minecraft:command_warden max 500
bossbar set minecraft:command_warden value 500

execute as @a[distance=..200] run attribute @s minecraft:generic.knockback_resistance modifier add 133a104f-3428-16ab-b768-aa41ce8930d7 WardenKnockback -2 add

summon warden ~ ~ ~ {Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L},"minecraft:sonic_boom_sound_cooldown":{value:{},ttl:100000L},"minecraft:sonic_boom_sound_delay":{value:{},ttl:100000L},"minecraft:sniff_cooldown":{value:{},ttl:100000L}}},DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:500f,Motion:[0d,1d,0d],Tags:["BarrierSource","FinalBattle"],Attributes:[{Name:generic.max_health,Base:500},{Name:generic.follow_range,Base:200},{Name:generic.knockback_resistance,Base:0.75},{Name:generic.attack_damage,Base:30},{Name:generic.attack_knockback,Base:10}],anger:{suspects:[{uuid:[],anger:150}]}}
data modify entity @e[tag=FinalBattle,limit=1,sort=nearest] anger.suspects[0].uuid set from entity @p[gamemode=!spectator] UUID
scoreboard players set @e[tag=FinalBattle,type=warden] WardenTeleportTime 300

team join NoInfighting @e[tag=BarrierSource,limit=1,sort=nearest]

scoreboard players set @s CommandEntityCount 0
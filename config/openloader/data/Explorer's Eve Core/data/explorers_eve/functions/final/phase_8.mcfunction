#Oops, there goes the block!
tag @s remove Phase1
tag @s remove Phase7
tag @s add Phase8

tag @s add FocusChase
tag @s add Blinded
tag @s add DecoyPanic
data merge entity @s {Heads:{0:{InjuryTime:1000000},1:{InjuryTime:1000000},2:{InjuryTime:1000000}}}

summon rabbit ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:8,Amplifier:3b,Duration:1000000,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.35},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}]}

summon witherstormmod:command_block ~ ~ ~ {Mode:2,State:4,Health:599f,Glowing:1b,Attributes:[{Name:generic.max_health,Base:600}],PortalCooldown:1000000,Tags:["CommandDecoy"]}

scoreboard players set @e[tag=CommandDecoy] Health 599
scoreboard players set @e[tag=CommandDecoy] HealthLimit 599
team join NoInfighting @e[tag=CommandDecoy]

execute if data storage world FinalBossCheckpoint4 run stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_1
execute if data storage world FinalBossCheckpoint4 run stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_1_intro
execute if data storage world FinalBossCheckpoint4 run scoreboard players set @a[tag=FinalMusic] MusicTime 0
data modify storage world FinalBossCheckpoint4 set value 1
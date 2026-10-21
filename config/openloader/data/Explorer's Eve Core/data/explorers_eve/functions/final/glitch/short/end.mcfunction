#Start a short circuit for one or two hits.
tag @s remove ShortCircuit
tag @s remove BossShort
scoreboard players set @s GlitchAttackWait 0
kill @e[tag=CommandRide]
summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide","CommandRideHigh"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}]}
summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["SparkBat"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:3}]}
summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["SparkBat"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:3}]}
playsound witherstormmod:command_block_summon hostile @a[distance=..200] ~ ~ ~ 10 2 1
team join NoInfighting @e[tag=CommandRide]

#Update prep tags if needed.
execute unless entity @s[tag=Tier1Prep] if score @s Health matches ..600 run function explorers_eve:final/glitch/boss/prep_1
execute unless entity @s[tag=Tier2Prep] if score @s Health matches ..500 run function explorers_eve:final/glitch/boss/prep_2
execute unless entity @s[tag=Tier3Prep] if score @s Health matches ..350 run function explorers_eve:final/glitch/boss/prep_3
execute unless entity @s[tag=Tier4Prep] if score @s Health matches ..200 run function explorers_eve:final/glitch/boss/prep_4

#If there are too few bosses around, spawn one.
execute store result score @s CommandEntityCount run execute if entity @e[tag=FinalBattle,distance=..200]
execute if entity @e[tag=FinalBattle,type=cataclysm:ignis,distance=..200] run scoreboard players set @s CommandEntityCount 10
execute if score @s CommandEntityCount matches ..1 unless entity @e[tag=GlitchBossChoice,tag=!LowPriority] as @e[tag=GlitchBossChoice,tag=LowPriority,limit=1,sort=random] run function explorers_eve:final/glitch/boss/spawn
execute if score @s CommandEntityCount matches ..1 if entity @e[tag=GlitchBossChoice,tag=!LowPriority] as @e[tag=GlitchBossChoice,tag=!LowPriority,limit=1,sort=random] run function explorers_eve:final/glitch/boss/spawn

#Make a delay to cause a short if nothing else happens.
scoreboard players set @s RandomRange 3000
function explorers_eve:random
scoreboard players operation @s GlitchShortDelay = @s RandomValue
scoreboard players add @s GlitchShortDelay 6000
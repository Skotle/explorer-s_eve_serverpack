#Start a short circuit for one or two hits.
tag @s remove ShortImmune
tag @s add ShortCircuit
kill @e[tag=CommandRide]
summon silverfish ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}]}

#Make effects,
summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["SparkBat"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:3}]}
summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["SparkBat"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:3}]}
particle end_rod ~ ~ ~ 0.35 0.35 0.35 0.3 40 force
playsound witherstormmod:command_block_damage hostile @a[distance=..200] ~ ~ ~ 10
particle minecraft:flash ~ ~ ~
function explorers_eve:final/glitch/firework
team modify GlitchColor color white

#Stop attacking.
function explorers_eve:final/glitch/attack/cancel

#Generate how many ticks this will last.
scoreboard players set @s RandomRange 150
function explorers_eve:random
scoreboard players operation @s GlitchShortTime = @s RandomValue
scoreboard players add @s GlitchShortTime 300

#Also determine the maximum number of allowed hits.
#scoreboard players set @s RandomRange 2
#function explorers_eve:random
#scoreboard players operation @s GlitchHitsPossible = @s RandomValue
#execute if score @s GlitchHitsPossible matches 0 run scoreboard players add @s GlitchHitsPossible 1
#scoreboard players add @s GlitchHitsPossible 1
scoreboard players set @s GlitchHitsPossible 1
execute unless entity @e[tag=GlitchBossChoice] unless entity @e[tag=FinalBattle] run scoreboard players add @s GlitchHitsPossible 2
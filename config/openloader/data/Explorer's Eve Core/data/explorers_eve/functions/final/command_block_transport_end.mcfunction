#Enter the Glitch.
kill @e[tag=CommandRide]
kill @e[tag=GlitchTransportDisplay,limit=1,sort=nearest]
tag @s remove GlitchTransport
tag @s remove CommandDecoy
tag @s add CommandFinalBoss
scoreboard players set @s GlitchTransportTime 0
scoreboard players set @s Health 599
scoreboard players set @s HealthLimit 599
data modify entity @s BossfightManager.CurrentPhase set value 5
data modify entity @s Health set value 599
kill @e[type=witherstormmod:tentacle,distance=..20]

execute as @a[tag=FinalBattling] run attribute @s minecraft:generic.knockback_resistance modifier add 133a104f-3428-16ab-b768-aa41ce8930d7 GlitchKnockback -2 add

data modify storage world FinalBossDimension set value "explorers_eve:glitch"

tag @w[tag=FinalBoss] remove DecoyPanic
tag @w[tag=FinalBoss] remove FocusChase
tag @w[tag=FinalBoss] add FinalBossIdle
tag @w[tag=FinalBoss] add AttackPossible
scoreboard players set @w[tag=FinalBoss] StormAttackWait 300
scoreboard players set @w[tag=FinalBoss] FinalAttackCount -1
attribute @w[tag=FinalBoss] witherstormmod:slow_flying_speed modifier add 123a104f-3438-12ab-b968-cc41ce8930d7 FinalHold -10 add
attribute @w[tag=FinalBoss] witherstormmod:target_stationary_flying_speed modifier add 134b104f-3828-12ab-b968-cc41ce8930d7 FinalHold2 -10 add
witherstormmod config server set server.misc.witherStormInvulnerability true

#Set a delay for the first short.
scoreboard players set @s RandomRange 2000
function explorers_eve:random
scoreboard players operation @s GlitchShortDelay = @s RandomValue
scoreboard players add @s GlitchShortDelay 5000
scoreboard players set @s GlitchHitsPossible 0

execute as @w[tag=FinalBoss] at @s in explorers_eve:glitch run tp @s ~ 100 ~
data modify entity @s Glowing set value 1b
execute in explorers_eve:glitch run tp @s ~ 75 ~
execute in explorers_eve:glitch run summon bat ~ 80 ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide","CommandRideHigh"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}]}
team join NoInfighting @e[tag=CommandRide]
execute at @p[gamemode=!spectator] in explorers_eve:glitch run tp @a[tag=FinalBattleDied] ~ 64 ~
execute at @p[gamemode=!spectator] in explorers_eve:glitch run tp @a[tag=FinalBattling] ~ 64 ~

playsound minecraft:block.portal.travel hostile @a[tag=FinalBattling] ~ ~ ~ 10 2 1
playsound minecraft:block.portal.travel hostile @a[tag=FinalBattleDied] ~ ~ ~ 10 2 1

execute in explorers_eve:glitch as @a[tag=FinalMusic] at @s run function explorers_eve:music/final/end
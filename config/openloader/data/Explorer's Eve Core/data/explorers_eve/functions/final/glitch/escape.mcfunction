#Leave the Glitch.
kill @e[tag=CommandRide]
tag @s add CommandDecoy
tag @s add CommandBlockDying
tag @s remove CommandFinalBoss
tag @s remove GlitchHurt
data modify entity @s BossfightManager.CurrentPhase set value 5
data modify entity @s State set value 4
team modify GlitchColor color white

scoreboard players set @s HealthLimit 155
scoreboard players operation @s Health = @s HealthLimit
execute store result entity @s Health float 1 run scoreboard players get @s HealthLimit

execute as @a[tag=GlitchGrabbed] at @s run function explorers_eve:final/player/drop

#Cleanup minions.
tp @e[tag=FinalBattle,predicate=explorers_eve:glitch] ~ -1000 ~
kill @e[tag=FinalBattle,predicate=explorers_eve:glitch]
kill @e[tag=GlitchBossChoice]
kill @e[tag=GlitchBossTracker]
kill @e[type=#witherstormmod:sickened_mobs,predicate=explorers_eve:glitch]

execute as @a[tag=FinalBattling] run attribute @s minecraft:generic.knockback_resistance modifier remove 133a104f-3428-16ab-b768-aa41ce8930d7
effect give @a[tag=FinalBattling] minecraft:resistance 5 10 true

data modify storage world FinalBossDimension set value "minecraft:overworld"
tag @w[tag=FinalBoss] remove FinalBossIdle
tag @w[tag=FinalBoss] remove AttackPossible
tag @w[tag=FinalBoss] remove GlitchPanic
scoreboard players set @w[tag=FinalBoss] StormAttackWait 1000000
witherstormmod config server set server.misc.witherStormInvulnerability false

tp @w[tag=FinalBoss] ~ 75 ~
execute as @w[tag=FinalBoss] at @s in minecraft:overworld run forceload add ~ ~ ~ ~
execute at @w[tag=FinalBoss] in minecraft:overworld positioned over world_surface run tp @e[type=corpse:corpse,predicate=explorers_eve:glitch] ~ ~ ~
execute at @w[tag=FinalBoss] in minecraft:overworld positioned over world_surface run summon rabbit ~ ~20 ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.1},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}]}
execute as @w[tag=FinalBoss] at @s in minecraft:overworld positioned over world_surface run tp @s ~ ~50 ~

execute in overworld at @w[tag=FinalBoss] run tp @s ~ ~-30 ~
execute in overworld at @w[tag=FinalBoss] run tp @a[predicate=explorers_eve:glitch] ~ ~10 ~

scoreboard players set @a[tag=GlitchMusic] MusicTime 1
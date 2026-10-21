#The block's hurt? Good.
kill @e[tag=CommandRide]
data modify entity @s Glowing set value 0b

execute unless entity @s[tag=CommandBlockDying] run fill ~3 ~16 ~3 ~-3 ~ ~-3 air destroy
execute unless entity @s[tag=CommandBlockDying] run summon rabbit ~ ~ ~ {Silent:1b,Invulnerable:1b,NoGravity:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.1},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}]}
team join NoInfighting @e[tag=CommandRide]

tag @s[tag=!CommandBlockDying] add GlitchTransport
scoreboard players remove @s HealthLimit 15
scoreboard players operation @s Health = @s HealthLimit
execute store result entity @s Health float 1 run scoreboard players get @s HealthLimit
stopsound @a[distance=..128] * witherstormmod:loud_tremble
team join GlitchColor @s
execute as @e[tag=FinalBoss] at @s run function explorers_eve:final/attack/cancel
scoreboard players set @w[tag=FinalBoss] StormAttackWait 99999
kill @e[type=witherstormmod:flaming_wither_skull,distance=..200]
tag @w[tag=FinalBoss] remove AttackPossible
execute as @w[tag=FinalBoss] at @s run forceload remove ~ ~ ~ ~

#If this is the real final hit, end it.
execute if score @s Health matches ..151 unless entity @s[tag=Despawning] run function explorers_eve:final/command_block_death
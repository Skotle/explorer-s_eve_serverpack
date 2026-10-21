#Command Block again! This time, it's tracked from the tick function.
#Despawn if the Wither Storm disappears.
execute unless entity @w[tag=FinalBoss,distance=..500] unless entity @a[predicate=explorers_eve:glitch] unless entity @s[tag=Despawning] run function explorers_eve:final/despawn

#For the last hit, no one can loiter in Glitch.
execute if entity @s[tag=CommandBlockDying] in overworld at @w[tag=FinalBoss] run tp @a[predicate=explorers_eve:glitch] ~ ~10 ~

#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#Check if it's been hurt.
execute if score @s Health < @s HealthLimit unless entity @s[tag=Despawning] run function explorers_eve:final/command_block_injury

#Sparkly bats for particles!
execute as @e[tag=SparkBat] at @s run function explorers_eve:final/glitch/spark_bat

#No tentacles!
execute if entity @e[type=witherstormmod:tentacle,distance=..8] run function explorers_eve:final/command_block/remove_tentacles

#The ride tends to not exist for the last hit...
execute if entity @s[tag=CommandBlockDying,predicate=explorers_eve:overworld] unless entity @e[tag=CommandRide] run summon rabbit ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["CommandRide"],DeathLootTable:"minecraft:empty",PortalCooldown:1000000,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:600f,Attributes:[{Name:generic.movement_speed,Base:0.1},{Name:generic.max_health,Base:600},{Name:generic.follow_range,Base:200}]}

#Water freezes when the block touches it. Yes, this is ripped right from the Symbiont. It works fine.
execute as @e[tag=CommandRide,limit=1,sort=nearest] at @s if block ~ ~-1 ~ #explorers_eve:liquid positioned ~ ~-1 ~ run function explorers_eve:symbiont/freeze

#If it's too far away from the Wither Storm, it goes back.
execute unless entity @w[tag=FinalBoss,distance=..128] as @e[tag=CommandRide,limit=1,sort=nearest] at @e[tag=FinalBoss,limit=1,sort=nearest] run function explorers_eve:final/minion_teleport

#Keep up with the ride.
execute at @e[tag=CommandRide,limit=1,sort=nearest] run tp @s ~ ~ ~

#Once damaged, it goes through a scene.
execute if entity @s[tag=GlitchTransport,tag=!CommandBlockDying] run function explorers_eve:final/command_block_transport_timer
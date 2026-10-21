#First off, determine whether this teleport will be to the Command Block to spawn monsters or not.
scoreboard players operation @s RandomRange = @e[tag=CommandFinalBoss,limit=1] Health
function explorers_eve:random
execute at @e[tag=CommandFinalBoss,limit=1] store result score @s Math run execute if entity @e[type=#witherstormmod:sickened_mobs,distance=..32]
execute if score @s RandomValue matches ..100 unless score @s Math matches 8.. unless entity @s[tag=SpawnTeleportDeny] unless entity @s[tag=Phase11] run tag @s add SpawnTeleport
tag @s remove SpawnTeleportDeny

#Make a marker appear somewhere nearby.
execute unless entity @s[tag=SpawnTeleport] run summon marker ~ ~ ~ {Tags:["FinalBossDestination"]}
execute as @e[tag=FinalBossDestination] at @e[tag=CommandFinalBoss,limit=1,sort=nearest] run spreadplayers ~ ~ 0 100 false @s

execute as @e[tag=FinalBossDestination,limit=1,sort=nearest] at @s if entity @w[tag=FinalBoss,distance=..75] facing entity @w[tag=FinalBoss] eyes rotated ~ 0 run tp @s ^ ^ ^-75

execute at @e[tag=FinalBossDestination,limit=1,sort=nearest] positioned over world_surface run tp @s ~ ~20 ~ facing entity @p[gamemode=!spectator]
execute if entity @s[tag=SpawnTeleport] at @e[tag=CommandFinalBoss,limit=1] positioned over world_surface run tp @s ~ ~40 ~ facing entity @p[gamemode=!spectator]
execute at @s run summon lightning_bolt ~ ~24 ~
playsound witherstormmod:bowels_transport hostile @a[predicate=explorers_eve:glitch] ~ ~ ~ 10 1.3 1
playsound minecraft:entity.enderman.teleport hostile @a[predicate=explorers_eve:glitch] ~ ~ ~ 10 0.5 1
playsound minecraft:entity.enderman.teleport hostile @a[predicate=explorers_eve:glitch] ~ ~ ~ 10 0.6 1
playsound minecraft:entity.enderman.teleport hostile @a[predicate=explorers_eve:glitch] ~ ~ ~ 10 0.7 1
kill @e[tag=FinalBossDestination]

#And pick a random number of attacks to use before moving again.
scoreboard players set @s RandomRange 2
function explorers_eve:random
scoreboard players operation @s FinalAttackCount = @s RandomValue
scoreboard players add @s FinalAttackCount 1

execute if entity @s[tag=SpawnTeleport] run function explorers_eve:final/move/spawn_start
#Make a marker appear somewhere nearby.
summon marker ~ ~ ~ {Tags:["FinalBossDestination"]}
tag @a[gamemode=!spectator,tag=FinalBattling,distance=..500,sort=random] add FinalBossMoveTarget
execute as @e[tag=FinalBossDestination] at @a[tag=FinalBossMoveTarget,limit=1,sort=nearest] run function explorers_eve:final/move/mark
tag @a remove FinalBossMoveTarget

execute as @e[tag=FinalBossDestination,limit=1,sort=nearest] at @s if entity @w[tag=FinalBoss,distance=..150] facing entity @w[tag=FinalBoss] eyes rotated ~ 0 run tp @s ^ ^ ^-75
execute at @e[tag=FinalBossDestination,limit=1,sort=nearest] run witherstormmod ultimateTarget set @s ~ ~ ~

#Remove the holding attributes.
attribute @s witherstormmod:slow_flying_speed modifier remove 123a104f-3438-12ab-b968-cc41ce8930d7
attribute @s witherstormmod:target_stationary_flying_speed modifier remove 134b104f-3828-12ab-b968-cc41ce8930d7

#Prepare a quake attack.
execute if entity @s[tag=FinalBossActive] run function explorers_eve:final/attack/quake/start

#And don't forget tags!
tag @s remove AttackPossible
tag @s add FinalBossMoving

#And pick a random number of attacks to use before moving again.
scoreboard players set @s RandomRange 3
function explorers_eve:random
scoreboard players operation @s FinalAttackCount = @s RandomValue
scoreboard players add @s FinalAttackCount 2
scoreboard players set @s[tag=FinalBossPassive] FinalAttackCount 1
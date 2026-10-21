#All heads are wounded now.
tag @s add FinalBossInjured
tag @s add FinalBossVulnerable
data merge entity @s {Heads:{0:{InjuryTime:600},1:{InjuryTime:600},2:{InjuryTime:600}}}
scoreboard players set @s InjuryDelay 25
scoreboard players set @s StormAttackWait 2

execute if entity @s[tag=SegmentsWeak] as @e[tag=FinalBossSegment,limit=2,sort=nearest] run data merge entity @s {Heads:{0:{InjuryTime:600},1:{InjuryTime:600},2:{InjuryTime:600}}}
execute if entity @s[tag=SegmentsWeak] run tag @e[tag=FinalBossSegment,limit=2,sort=nearest] remove SegmentHeadInjured
tag @s remove SegmentsWeak
tag @s remove FocusChase

witherstormmod config server set server.misc.flyingHeight 5
witherstormmod config server set server.ultimate_target_logic.ultimateTargetingType NONE
witherstormmod config server set server.playing_dead.revivalTimeMinutes 3

data modify entity @s UltimateTargetDistraction.DistractionWait set value 3000
data modify entity @s PlayDeadManager.RevivalTime set value 0
data modify entity @s PlayDeadManager.StateTicks set value 0
data modify entity @s PlayDeadManager.RecentlyRevived set value 1b
data modify entity @s Invulnerable set value 0b

team join NoInfighting @s

#After a miniboss is defeated, revive dead players.
execute if entity @s[tag=FinalBossPassive] as @a[tag=FinalBattleDied] at @a[gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run function explorers_eve:final/player/respawn
tag @s remove FinalBossPassive

#Remove the holding attributes.
attribute @s witherstormmod:slow_flying_speed modifier remove 123a104f-3438-12ab-b968-cc41ce8930d7
attribute @s witherstormmod:target_stationary_flying_speed modifier remove 134b104f-3828-12ab-b968-cc41ce8930d7
scoreboard players set @s FinalAttackCount 0

playsound witherstormmod:wither_storm_hurt hostile @a[distance=..500] ~ ~ ~ 50 1 1

#Cancel attacking.
function explorers_eve:final/attack/cancel

scoreboard players set @s Math 50
execute positioned ~ ~15 ~ run function explorers_eve:final/wound_loop

execute if entity @s[tag=Phase1] run data modify entity @s Health set value 480
execute if entity @s[tag=Phase1] if data storage world FinalBossCheckpoint2 run data modify entity @s Health set value 350
execute if entity @s[tag=Phase3,scores={Health=350..}] run data modify entity @s Health set value 350
execute if entity @s[tag=Phase1] if data storage world FinalBossCheckpoint3 run data modify entity @s Health set value 200
execute if entity @s[tag=Phase5,scores={Health=200..}] run data modify entity @s Health set value 200
execute if entity @s[tag=Phase6,scores={Health=75..}] run data modify entity @s Health set value 75
execute if entity @s[tag=Phase1] if data storage world FinalBossCheckpoint4 run data modify entity @s Health set value 60
execute if entity @s[tag=Phase7,scores={Health=60..}] run data modify entity @s Health set value 60

execute if entity @s[tag=Phase3] run tag @s add PhaseTransition
execute if entity @s[tag=Phase6] run tag @s add PhaseTransition
execute if entity @s[tag=Phase1] if data storage world FinalBossCheckpoint2 run tag @s add PhaseTransition
scoreboard players set @s FinalPhaseTransition 0
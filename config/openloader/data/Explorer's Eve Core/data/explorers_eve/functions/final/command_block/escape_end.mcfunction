#Kill the block, spawn the real final boss.
witherstormmod config server set server.misc.flyingHeight 40
witherstormmod config server set server.misc.rotationSpeed 1
witherstormmod config server set server.misc.witherStormInvulnerability false
witherstormmod config server set server.ultimate_target_logic.ultimateTargetingType NEAREST
witherstormmod config server set server.targeting.headEscapeTime 20
witherstormmod config server set server.ultimate_target_logic.distractions.targettingDistractionsEnabled false
witherstormmod config server set server.targeting.specialTargetingBiasChance 100
witherstormmod config server set server.misc.instantChomp true

playsound witherstormmod:wither_storm_evolves hostile @a[distance=1..] ~ ~ ~ 5 1 1
stopsound @a[tag=FinalBattling] record witherstormmod:wither_storm_reviving_theme

summon witherstormmod:wither_storm ~ ~-10 ~ {Phase:4,Tags:["FinalBoss","Phase1","FinalBossActive","AttackPossible","FocusChase"],Health:500f,Invulnerable:1b,Resummoned:1b,PlayDeadManager:{RevivalTime:3000,RecentlyRevived:1b},Heads:{0:{Hits:1},1:{Hits:1},2:{Hits:1}}}
attribute @w[tag=FinalBoss] witherstormmod:slow_flying_speed modifier add 133a104f-3428-12ab-b968-aa41ce8930d7 FinalSpeed 1 add
attribute @w[tag=FinalBoss] witherstormmod:target_stationary_flying_speed modifier add 133b104f-3428-12ab-b968-aa41ce8930d7 FinalSpeed2 1 add
attribute @w[tag=FinalBoss] minecraft:generic.max_health modifier add 1532d04f-3438-43ab-b968-aa41de8933d7 FinalBossHealth -524 add
attribute @w[tag=FinalBoss] witherstormmod:evolution_speed modifier add 1533d04f-3438-43ab-bcd3-aa41de8933d7 FinalBossEvolution 100 add
scoreboard players set @w[tag=FinalBoss] Health 500
scoreboard players set @w[tag=FinalBoss] HealthLimit 500
scoreboard players set @w[tag=FinalBoss] StormAttackWait 800
scoreboard players set @w[tag=FinalBoss] FinalAttackCount 0
team join NoInfighting @w[tag=FinalBoss]
witherstormmod consumedEntities lock @w

execute store result score @s Math run witherstormmod config server get server.flaming_skulls.flamingSkullExplosionSize
execute if score @s Math matches ..49 run witherstormmod config server set server.flaming_skulls.flamingSkullExplosionSize default

execute as @e[type=witherstormmod:block_cluster,distance=..300] at @s run summon marker ~ ~ ~ {Tags:["EscapeClusterMark"]}
kill @e[type=witherstormmod:block_cluster,distance=..300]
execute as @e[tag=EscapeClusterMark] at @s run fill ~ ~ ~ ~1 ~1 ~1 witherstormmod:tainted_flesh_block
execute as @e[tag=EscapeClusterMark] at @s run witherstormmod cluster create ~ ~ ~ ~1 ~1 ~1 0 {RotationDelta:{x:1,y:1},ShakeTime:0,NoGravity:1} @w[tag=FinalBoss]
kill @e[tag=EscapeClusterMark]

data modify entity @s State set value 0
tp @s ~ -1000 ~
tp @e[tag=CommandRide,limit=1,sort=nearest] ~ -1000 ~
kill @s

data modify storage world FinalBossCheckpoint1 set value 1
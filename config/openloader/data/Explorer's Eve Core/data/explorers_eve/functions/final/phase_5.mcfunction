#Phase transition!
tag @s remove Phase4
tag @s add Phase5

tag @s add FinalBossPassive
tag @s add SegmentsWeak
witherstormmod config server set server.playing_dead.revivalTimeMinutes 120
witherstormmod config server set server.targeting.specialTargetingBiasChance 0
data modify entity @s PlayDeadManager.RevivalTime set value 0
data merge entity @s {Heads:{0:{Hits:5},1:{Hits:5},2:{Hits:5}}}
execute as @e[tag=FinalBossSegment,limit=2,sort=nearest] run data merge entity @s {Heads:{0:{Hits:5},1:{Hits:5},2:{Hits:5}}}

team join NoInfighting2 @s
team join NoInfighting2 @a

execute at @a[gamemode=!spectator,tag=FinalBattling,distance=..500] run summon witherstormmod:withered_symbiont ~ ~12 ~ {Tags:["FinalBossMinion","SymbiontRematch","Resummoned"],IsNonBossMode:1,IsRushMode:1,PortalCooldown:1000000,Attributes:[{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:25}]}
execute at @a[gamemode=!spectator,tag=FinalBattling,distance=..500,limit=1,sort=random] run summon witherstormmod:withered_symbiont ^ ^8 ^4 {Tags:["FinalBossMinion","SymbiontRematch","Resummoned"],IsNonBossMode:1,IsRushMode:1,PortalCooldown:1000000,Attributes:[{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:25}]}
execute at @a[gamemode=!spectator,tag=FinalBattling,distance=..500,limit=1,sort=random] run summon witherstormmod:withered_symbiont ^ ^8 ^-4 {Tags:["FinalBossMinion","SymbiontRematch","Resummoned"],IsNonBossMode:1,IsRushMode:1,PortalCooldown:1000000,Attributes:[{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:25}]}
team join NoInfighting @e[tag=FinalBossMinion]

stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_4
scoreboard players set @a[tag=FinalMusic] MusicTime 0
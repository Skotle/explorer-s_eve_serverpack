#Phase transition!
tag @s remove Phase2
tag @s add Phase3

tag @s add FinalBossPassive
witherstormmod config server set server.playing_dead.revivalTimeMinutes 120
witherstormmod config server set server.targeting.specialTargetingBiasChance 0
data modify entity @s PlayDeadManager.RevivalTime set value 0
data merge entity @s {Heads:{0:{Hits:5},1:{Hits:5},2:{Hits:5}}}

team join NoInfighting2 @s
team join NoInfighting2 @a

summon wither ~ ~ ~ {Tags:["FinalBossMinion"],PortalCooldown:1000000,Attributes:[{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:20}]}
team join NoInfighting @e[tag=FinalBossMinion]

stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_2
scoreboard players set @a[tag=FinalMusic] MusicTime 0
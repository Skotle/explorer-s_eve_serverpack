#Phase transition!
tag @s remove Phase1
tag @s remove Phase3
tag @s add Phase4

tag @s add FinalBossActive
tag @s add SegmentsWeak
tag @s add ForceScatter
witherstormmod config server set server.targeting.specialTargetingBiasChance 60

execute unless data storage world FinalBossCheckpoint2 as @a[gamemode=!spectator,tag=FinalBattling] at @s run function explorers_eve:final/give_experience
data modify storage world FinalBossCheckpoint2 set value 1

data merge entity @s {Heads:{0:{Hits:0},1:{Hits:0},2:{Hits:0}},OtherHeadsDisabled:1b}

summon witherstormmod:wither_storm_segment ^8 ^15 ^ {OtherHeadsDisabled:1b,Invulnerable:1b,Tags:["FinalBossSegment","FinalBossSegment1"]}
summon witherstormmod:wither_storm_segment ^-12 ^15 ^ {OtherHeadsDisabled:1b,Invulnerable:1b,Mirrored:1b,Tags:["FinalBossSegment","FinalBossSegment2"]}
execute as @e[tag=FinalBossSegment] run data modify entity @s Parent set from entity @w UUID
execute as @e[tag=FinalBossSegment] at @s rotated as @w run tp @s ~ ~ ~ ~ ~
team join NoInfighting @e[tag=FinalBossSegment]
playsound witherstormmod:wither_storm_roar hostile @a[distance=..500] ~ ~ ~ 50 1 0.5

stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_1_intro
stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_1
stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_3
scoreboard players set @a[tag=FinalMusic] MusicTime 0
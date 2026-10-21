#Phase transition!
tag @s remove Phase5
tag @s add Phase6

tag @s add FinalBossActive
tag @s add SegmentsWeak
tag @s add ForceScatter
witherstormmod config server set server.targeting.headEscapeTime 30
witherstormmod config server set server.targeting.specialTargetingBiasChance 60

execute unless data storage world FinalBossCheckpoint3 as @a[tag=FinalBattling,tag=!FinalBattleDied] at @s run function explorers_eve:final/give_experience
data modify storage world FinalBossCheckpoint3 set value 1

data merge entity @s {Heads:{0:{Hits:1},1:{Hits:0},2:{Hits:0}},OtherHeadsDisabled:1b}

execute if entity @s[tag=Phase1] run summon witherstormmod:wither_storm_segment ~ ~ ~ {OtherHeadsDisabled:1b,Invulnerable:1b,Tags:["FinalBossSegment","FinalBossSegment1"]}
execute if entity @s[tag=Phase1] run summon witherstormmod:wither_storm_segment ~ ~ ~ {OtherHeadsDisabled:1b,Invulnerable:1b,Mirrored:1b,Tags:["FinalBossSegment","FinalBossSegment2"]}
execute if entity @s[tag=Phase1] as @e[tag=FinalBossSegment] run data modify entity @s Parent set from entity @w UUID
execute if entity @s[tag=Phase1] as @e[tag=FinalBossSegment] at @s rotated as @w run tp @s ~ ~ ~ ~ ~
playsound witherstormmod:wither_storm_roar hostile @a[distance=..500] ~ ~ ~ 50 1 0.5

execute as @e[tag=FinalBossSegment,limit=2,sort=nearest] run data merge entity @s {Heads:{0:{Hits:1},1:{Hits:0},2:{Hits:0}}}

stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_1_intro
stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_1
stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_5
scoreboard players set @a[tag=FinalMusic] MusicTime 0

tag @s remove Phase1
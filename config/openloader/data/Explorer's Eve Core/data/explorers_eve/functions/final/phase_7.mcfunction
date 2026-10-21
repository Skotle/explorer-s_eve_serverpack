#Phase transition!
tag @s remove Phase6
tag @s add Phase7

tag @s add FinalBossActive
tag @s add SegmentsStrong
tag @s add ForceScatter

data modify entity @s PlayDeadManager.RevivalTime set value 3550

data modify entity @s OtherHeadsDisabled set value 0
execute as @e[tag=FinalBossSegment,limit=2,sort=nearest] run data modify entity @s OtherHeadsDisabled set value 0b
playsound witherstormmod:wither_storm_roar hostile @a[distance=..500] ~ ~ ~ 50 1 0.5

stopsound @a[tag=FinalMusic] record explorers_eve:final_theme_6
scoreboard players set @a[tag=FinalMusic] MusicTime 0
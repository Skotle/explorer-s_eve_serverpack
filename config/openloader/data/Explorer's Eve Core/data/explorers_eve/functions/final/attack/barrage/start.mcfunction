#Setup for the multishot.
tag @s add BarrageActive

scoreboard players set @s SkullSpeedMultiplier 15
execute at @p[tag=FinalBossTarget] run function explorers_eve:final/attack/set_speed

execute if entity @s[tag=SegmentsWeak] as @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest,distance=..150] at @s run summon area_effect_cloud ~ ~ ~ {Duration:150,Tags:["BarrageSource","SegmentReady"]}
execute if entity @s[tag=RotateSuccess] run summon area_effect_cloud ~ ~ ~ {Duration:150,Tags:["BarrageSource","CenterReady"]}
execute if entity @s[tag=Phase11] run data modify entity @e[tag=BarrageSource,limit=1] Duration set value 40
execute if entity @s[tag=RotateSuccess,tag=!SegmentsWeak] run summon area_effect_cloud ~ ~ ~ {Duration:150,Tags:["BarrageSource","LeftReady"]}
execute if entity @s[tag=RotateSuccess,tag=!SegmentsWeak] run summon area_effect_cloud ~ ~ ~ {Duration:150,Tags:["BarrageSource","RightReady"]}
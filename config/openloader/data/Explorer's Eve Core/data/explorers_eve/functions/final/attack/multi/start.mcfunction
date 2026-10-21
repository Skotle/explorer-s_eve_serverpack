#Setup for the multishot.
tag @s add MultishotActive

scoreboard players set @s SkullSpeedMultiplier 15
execute at @p[tag=FinalBossTarget] run function explorers_eve:final/attack/set_speed

execute if entity @s[tag=SegmentsWeak] as @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest,distance=..200] at @s run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["MultishotSource","SegmentReady"]}
execute if entity @s[tag=RotateSuccess] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["MultishotSource","CenterReady"]}
execute if entity @s[tag=RotateSuccess,tag=!SegmentsWeak] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["MultishotSource","LeftReady"]}
execute if entity @s[tag=RotateSuccess,tag=!SegmentsWeak] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["MultishotSource","RightReady"]}
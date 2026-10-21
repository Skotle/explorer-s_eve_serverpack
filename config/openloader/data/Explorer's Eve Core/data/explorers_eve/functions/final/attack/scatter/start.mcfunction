#Setup for the scattershot.
tag @s add ScattershotActive

scoreboard players set @s SkullSpeedMultiplier 10
execute at @p[tag=FinalBossTarget] run function explorers_eve:final/attack/set_speed

execute at @p[tag=FinalBossTarget] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:121,Tags:["ScattershotTarget"]}
execute if entity @s[tag=Phase11] run data modify entity @e[tag=ScattershotTarget,limit=1] Duration set value 61
execute at @p[tag=FinalBossTarget] run spreadplayers ~ ~ 0 25 false @e[tag=ScattershotTarget]

execute if entity @s[tag=SegmentsWeak] as @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest,distance=..200] at @s run summon area_effect_cloud ~ ~ ~ {Duration:121,Tags:["ScattershotSource","SegmentReady"]}
execute if entity @s[tag=RotateSuccess] run summon area_effect_cloud ~ ~ ~ {Duration:121,Tags:["ScattershotSource","CenterReady"]}
execute if entity @s[tag=RotateSuccess,tag=!SegmentsWeak] run summon area_effect_cloud ~ ~ ~ {Duration:121,Tags:["ScattershotSource","LeftReady"]}
execute if entity @s[tag=RotateSuccess,tag=!SegmentsWeak] run summon area_effect_cloud ~ ~ ~ {Duration:121,Tags:["ScattershotSource","RightReady"]}

execute if entity @s[tag=!RotateSuccess,tag=SegmentsWeak] run tag @s add SlowAttack
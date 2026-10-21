#Setup for the lineshot.
tag @s add LineshotActive

scoreboard players set @s SkullSpeedMultiplier 15
execute at @p[tag=FinalBossTarget] run function explorers_eve:final/attack/set_speed

execute at @p[tag=FinalBossTarget] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["LineshotRoot"]}
execute if entity @s[tag=RotateSuccess] run tag @e[tag=LineshotRoot] add Center
execute if entity @s[tag=RotateSuccess,tag=!SegmentsWeak] run tag @e[tag=LineshotRoot] add Sides
execute if entity @s[tag=SegmentsWeak] run tag @e[tag=LineshotRoot] add Segments
execute as @e[tag=LineshotRoot,limit=1,sort=nearest] at @s run function explorers_eve:final/attack/line/mark_rotate

execute if entity @s[tag=SegmentsWeak] as @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest,distance=..200] at @s run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["LineshotSource","SegmentReady"]}
execute as @e[tag=RotateSuccess] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["LineshotSource","CenterReady"]}
execute if entity @s[tag=RotateSuccess,tag=!SegmentsWeak] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["LineshotSource","LeftReady"]}
execute if entity @s[tag=RotateSuccess,tag=!SegmentsWeak] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["LineshotSource","RightReady"]}
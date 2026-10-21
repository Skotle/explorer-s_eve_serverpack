#Setup for the lineshot.
tag @s add LineshotActive

scoreboard players set @s SkullSpeedMultiplier 20
execute at @p[gamemode=!spectator] run function explorers_eve:storm/attack/set_speed

execute at @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["LineshotRoot"]}
execute as @p[gamemode=!spectator] if predicate explorers_eve:boat at @s rotated as @e[type=#explorers_eve:boat,limit=1,sort=nearest,distance=..4] positioned ^ ^ ^24 run tp @e[tag=LineshotRoot,limit=1,sort=nearest] ~ ~ ~
execute if entity @s[tag=RotateSuccess] run tag @e[tag=LineshotRoot] add Center
execute if entity @s[tag=RotateSuccess,tag=!Phase6Chase] run tag @e[tag=LineshotRoot] add Sides
execute if score @s StormPhase matches 6.. run tag @e[tag=LineshotRoot] add Segments
execute as @e[tag=LineshotRoot,limit=1,sort=nearest] at @s run function explorers_eve:storm/attack/line/mark_rotate

execute if score @s StormPhase matches 6.. as @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest,distance=..200] at @s run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["LineshotSource","SegmentReady"]}
execute if entity @s[tag=RotateSuccess] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["LineshotSource","CenterReady"]}
execute if entity @s[tag=RotateSuccess,tag=!Phase6Chase] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["LineshotSource","LeftReady"]}
execute if entity @s[tag=RotateSuccess,tag=!Phase6Chase] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["LineshotSource","RightReady"]}
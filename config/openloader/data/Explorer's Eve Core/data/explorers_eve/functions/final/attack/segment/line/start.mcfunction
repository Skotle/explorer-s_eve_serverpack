#Setup for the lineshot.
tag @s add LineshotActive

scoreboard players set @s SkullSpeedMultiplier 15
execute at @p[gamemode=!spectator,tag=FinalBattling] run function explorers_eve:final/attack/set_speed

execute at @p[gamemode=!spectator,tag=FinalBattling] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["LineshotRoot"]}
execute as @e[tag=LineshotRoot,limit=1,sort=nearest] at @s run function explorers_eve:final/attack/segment/line/mark_rotate

summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["LineshotSegmentSource","SegmentReady"]}
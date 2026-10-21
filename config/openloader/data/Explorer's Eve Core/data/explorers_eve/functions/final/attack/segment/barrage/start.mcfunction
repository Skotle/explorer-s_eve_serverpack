#Setup for the multishot.
tag @s add BarrageActive

scoreboard players set @s SkullSpeedMultiplier 20
execute at @p[gamemode=!spectator,tag=FinalBattling] run function explorers_eve:final/attack/set_speed

summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["BarrageSegmentSource","SegmentReady"]}
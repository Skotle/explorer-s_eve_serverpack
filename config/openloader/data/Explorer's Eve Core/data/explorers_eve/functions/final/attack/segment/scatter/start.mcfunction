#Setup for the scattershot.
tag @s add ScattershotActive

scoreboard players set @s SkullSpeedMultiplier 15
execute at @p[gamemode=!spectator,tag=FinalBattling] run function explorers_eve:final/attack/set_speed

execute at @p[gamemode=!spectator,tag=FinalBattling] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:61,Tags:["ScattershotSegmentTarget"]}
execute at @p[gamemode=!spectator,tag=FinalBattling] run spreadplayers ~ ~ 0 15 false @e[tag=ScattershotSegmentTarget]

summon area_effect_cloud ~ ~ ~ {Duration:61,Tags:["ScattershotSegmentSource","SegmentReady"]}
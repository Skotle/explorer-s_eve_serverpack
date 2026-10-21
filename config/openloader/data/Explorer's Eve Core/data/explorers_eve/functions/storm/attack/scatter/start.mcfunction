#Setup for the scattershot.
tag @s add ScattershotActive

scoreboard players set @s SkullSpeedMultiplier 9
execute at @p[gamemode=!spectator] run function explorers_eve:storm/attack/set_speed

execute at @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:81,Tags:["ScattershotTarget"]}
execute at @p[gamemode=!spectator] run spreadplayers ~ ~ 0 20 false @e[tag=ScattershotTarget]
execute if entity @s[tag=Phase6Chase] run data modify entity @e[tag=ScattershotTarget,limit=1,sort=nearest] Duration set value 151

execute if entity @s[scores={StormPhase=6..}] as @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest,distance=..200] at @s run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["ScattershotSource","SegmentReady"]}
execute if entity @s[tag=RotateSuccess] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["ScattershotSource","CenterReady"]}
execute if entity @s[tag=RotateSuccess,tag=!Phase6Chase] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["ScattershotSource","LeftReady"]}
execute if entity @s[tag=RotateSuccess,tag=!Phase6Chase] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["ScattershotSource","RightReady"]}

execute if entity @s[tag=!RotateSuccess,scores={StormPhase=6..}] run tag @s add SlowAttack
execute if entity @e[tag=ScattershotSource,distance=..128] run tag @s remove ForceScatter
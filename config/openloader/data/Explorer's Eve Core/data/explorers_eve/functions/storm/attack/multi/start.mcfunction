#Setup for the multishot.
tag @s add MultishotActive

scoreboard players set @s SkullSpeedMultiplier 15
execute at @p[gamemode=!spectator] run function explorers_eve:storm/attack/set_speed

execute if entity @s[scores={StormPhase=6..}] as @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest,distance=..200] at @s run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["MultishotSource","SegmentReady"]}
execute if entity @s[tag=RotateSuccess] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["MultishotSource","CenterReady"]}
execute if entity @s[tag=RotateSuccess,tag=!Phase6Chase] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["MultishotSource","LeftReady"]}
execute if entity @s[tag=RotateSuccess,tag=!Phase6Chase] run summon area_effect_cloud ~ ~ ~ {Duration:200,Tags:["MultishotSource","RightReady"]}

scoreboard players set @s RandomRange 3
function explorers_eve:random
execute if score @s RandomValue matches 0 run tag @s add SlowAttack
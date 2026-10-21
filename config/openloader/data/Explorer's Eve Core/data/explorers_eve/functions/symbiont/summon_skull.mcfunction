#Setup for the skull shot. We're now controlling the Wither Storm.
scoreboard players set @s SkullSpeedMultiplier 15
execute at @p[gamemode=!spectator] run function explorers_eve:storm/attack/set_speed

execute at @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["SkullTarget"]}

execute if entity @s[scores={StormPhase=6..}] as @e[type=witherstormmod:wither_storm_segment,limit=2,sort=nearest] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["HelpSource","SegmentReady"]}
execute if entity @s[tag=RotateSuccess] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["HelpSource","CenterReady"]}
execute if entity @s[tag=RotateSuccess] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["HelpSource","LeftReady"]}
execute if entity @s[tag=RotateSuccess] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["HelpSource","RightReady"]}
tag @s[tag=RotateSuccess] remove RotateSuccess

execute as @e[tag=HelpSource,limit=1,sort=random] run tag @s add HelpShoot
execute if entity @e[tag=HelpShoot,tag=CenterReady] run function explorers_eve:storm/attack/shoot_center
execute if entity @e[tag=HelpShoot,tag=LeftReady] run function explorers_eve:storm/attack/shoot_left
execute if entity @e[tag=HelpShoot,tag=RightReady] run function explorers_eve:storm/attack/shoot_right
execute if entity @e[tag=HelpShoot,tag=SegmentReady] at @e[tag=HelpShoot] run function explorers_eve:storm/attack/shoot_segment
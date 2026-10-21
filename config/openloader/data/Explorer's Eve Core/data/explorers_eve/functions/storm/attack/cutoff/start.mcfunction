#Setup for the line pull attack.
tag @s add CutoffActive

execute as @p[gamemode=!spectator] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:24,Tags:["LinePullSource"]}
execute as @p[gamemode=!spectator] at @s align xyz rotated ~ 0 positioned ^15 ^ ^8 run tp @e[tag=LinePullSource,limit=1,sort=nearest] ~ ~ ~ ~40 0

execute if entity @s[scores={StormPhase=6..},tag=!RotateSuccess] at @p[gamemode=!spectator] run tag @e[type=witherstormmod:wither_storm_segment,limit=1,sort=nearest] add LinePullPossible
execute if entity @s[tag=RotateSuccess] run tag @s add LinePullPossible
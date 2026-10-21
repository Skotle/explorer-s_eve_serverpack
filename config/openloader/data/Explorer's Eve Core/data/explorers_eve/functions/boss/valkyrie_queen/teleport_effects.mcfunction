#Teleport the boss and make particles.
particle dust 1 1 1 1 ~ ~1 ~ 0.3 0.5 0.3 10 20
tp @s ~ ~ ~
execute if entity @s[tag=LevitateActive] store result score @s Math run data get entity @p[gamemode=!spectator] Pos[1]
execute if entity @s[tag=LevitateActive] run scoreboard players remove @s Math 1
execute if entity @s[tag=LevitateActive] store result entity @s Pos[1] double 1 run scoreboard players get @s Math
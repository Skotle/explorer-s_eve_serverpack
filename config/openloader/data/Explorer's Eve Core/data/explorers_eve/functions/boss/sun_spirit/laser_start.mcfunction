#Setup for the fire laser.
tag @s add LaserActive
execute at @p[gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["LaserTarget"]}

scoreboard players set @s[tag=FinalBattle] SunSpiritLaserTime -50
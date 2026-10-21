#Summon markers.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["StarlitRootMark"],Duration:300}
execute at @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["StarlitRootAim"],Duration:300}

#Set their scores.
scoreboard players set @e[tag=StarlitRootMark,limit=1,sort=nearest] StarlitRootTime 60
scoreboard players set @e[tag=StarlitRootMark,limit=1,sort=nearest] Math 7
scoreboard players set @e[tag=StarlitRootMark,limit=1,sort=nearest] RandomRange 4
execute as @e[tag=StarlitRootMark,limit=1,sort=nearest] at @s run function explorers_eve:random

#Reset the timer.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s StarlitRootTime = @s RandomValue
scoreboard players add @s StarlitRootTime 200
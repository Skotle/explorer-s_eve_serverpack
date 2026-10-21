#No more moving!
data modify entity @e[tag=CommandRide,limit=1,sort=nearest] Motion set value [0d,0d,0d]
data modify entity @e[tag=CommandRide,limit=1,sort=nearest] NoAI set value 1b

summon minecraft:area_effect_cloud ~ ~-1 ~ {Duration:70,Tags:["RematchScatterSource"]}

execute at @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:81,Tags:["ScattershotTarget"]}
execute at @p[gamemode=!spectator] run spreadplayers ~ ~ 0 15 false @e[tag=ScattershotTarget]
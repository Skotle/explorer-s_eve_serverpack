#Spawn the mark that'll shoot skulls.
scoreboard players add @s CommandSkullWait 130

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["CommandSkullMark"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["CommandSkullMark"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["CommandSkullMark"]}
execute at @p[gamemode=!spectator] run spreadplayers ~ ~ 10 25 false @e[tag=CommandSkullMark]

execute at @e[tag=CommandSkullMark] run summon minecraft:area_effect_cloud ~ ~5 ~ {Duration:130,Tags:["RematchSkullSource"]}
scoreboard players set @e[tag=RematchSkullSource] CommandSkullTime 65

execute at @e[tag=RematchSkullSource] run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 2 0.5
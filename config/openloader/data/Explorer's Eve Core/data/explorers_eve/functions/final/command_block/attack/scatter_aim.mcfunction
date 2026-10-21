#Pick a source, any source! Then do it until they're gone.
scoreboard players set @s CommandSkullWait 7

execute at @p[gamemode=!spectator] run spreadplayers ~ ~ 0 15 false @e[tag=ScattershotTarget]
execute at @e[tag=ScattershotTarget] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:1,Tags:["SkullTarget"]}

summon marker ~ ~ ~ {Tags:["SkullSource"]}
execute as @e[tag=SkullSource,limit=1,sort=nearest] run function explorers_eve:final/command_block/attack/shoot
#Move the source, and if appropriate, spawn markers.
execute rotated ~10 0 run tp @s ^ ^ ^3 ~ ~
execute facing entity @p[gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^-5 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["LinePullTarget"]}
execute as @e[tag=LinePullTarget,limit=1,sort=nearest] at @s unless block ~ ~-1 ~ water run function explorers_eve:storm/attack/cutoff/mark
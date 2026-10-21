#Move the marker forward and spawn a warning.
tp @s ^ ^ ^1
particle dust 1 0 1 1 ~ ~1 ~ 0.25 0.5 0.25 0.05 10
execute if block ~ ~ ~ end_stone run kill @s
execute unless entity @e[type=cataclysm:ender_guardian,distance=..48] run kill @s
#Make particles a certain distance away, and if the tag is here, spawn roots.
tag @s remove Line
particle minecraft:dust 0.5 0 0.5 1.5 ~ ~0.5 ~ 0.1 0.1 0.1 1 1
execute if entity @s[tag=Move] unless entity @e[tag=StarlitRootLine,distance=..0.74] run summon blue_skies:ent_root ~ ~ ~ {Large:1b,Tags:["StarlitRootLine"]}
execute if entity @s[distance=..30] run tag @s add Line
execute unless entity @s[distance=..8] unless block ~ ~ ~ #explorers_eve:air_like run tag @s remove Line
execute if entity @s[tag=Line] positioned ^ ^ ^0.5 run function explorers_eve:boss/population/root_line
execute if entity @s[tag=Move] unless entity @s[tag=Line] run function explorers_eve:boss/population/root_move
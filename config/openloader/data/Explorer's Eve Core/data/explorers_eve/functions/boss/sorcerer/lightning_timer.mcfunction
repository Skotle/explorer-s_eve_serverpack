#Lightning marks make particles before striking.
particle end_rod ~ ~1.25 ~ 0.2 0.7 0.2 0.01 2
particle end_rod ~ ~ ~ 0.25 0.1 0.25 0.1 3

scoreboard players add @s SorcererArcTime 1
execute if score @s SorcererArcTime matches 40..60 if entity @e[tag=SorcererBoss,distance=..10] run scoreboard players remove @s SorcererArcTime 1
execute if score @s SorcererArcTime matches 60 run function explorers_eve:boss/sorcerer/lightning_strike
execute if score @s SorcererArcTime matches 60..70 run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 blue_skies:blue_fire replace fire
execute if score @s SorcererArcTime matches 70 run kill @s
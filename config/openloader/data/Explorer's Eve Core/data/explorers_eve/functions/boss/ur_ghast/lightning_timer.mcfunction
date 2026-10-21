#Lightning marks make particles before striking.
particle end_rod ~ ~1.25 ~ 0.2 0.7 0.2 0.01 2
particle end_rod ~ ~ ~ 0.25 0.1 0.25 0.1 3

scoreboard players add @s GhastLightningTime 1
execute if score @s GhastLightningTime matches 60.. run function explorers_eve:boss/ur_ghast/lightning_strike
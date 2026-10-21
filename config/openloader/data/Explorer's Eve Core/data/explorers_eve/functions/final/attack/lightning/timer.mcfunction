#Wait for the right time.
execute at @e[tag=LightningMark] run particle end_rod ~ ~1.25 ~ 0.2 0.7 0.2 0.01 2
execute at @e[tag=LightningMark] run particle end_rod ~ ~ ~ 0.25 0.1 0.25 0.1 3

execute as @e[tag=LightningMark] if score @s StormAttackTime <= @w[tag=FinalBoss] StormAttackTime at @s run function explorers_eve:final/attack/lightning/strike

execute if score @s StormAttackTime matches 100.. run function explorers_eve:final/attack/lightning/end
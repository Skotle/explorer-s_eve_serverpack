#Bats make sparks. After enough time, they vanish.
particle end_rod ~ ~ ~ 0.15 0.15 0.15 0.05 1 force
particle end_rod ~ ~ ~ 0.15 0.15 0.15 0.1 1 force
particle end_rod ~ ~ ~ 0.05 0.05 0.05 0.025 1 force

scoreboard players remove @s GlitchSparkTime 1
execute if score @s GlitchSparkTime matches ..0 run tp @s ~ -1000 ~
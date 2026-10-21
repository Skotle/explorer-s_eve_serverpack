#Tick down the timer and make particles.
scoreboard players remove @s ValkyrieBoltTime 1
particle end_rod ~ ~1.25 ~ 0.2 0.7 0.2 0.01 2 force @a[distance=..40]
particle end_rod ~ ~ ~ 0.25 0.1 0.25 0.1 3 force @a[distance=..40]
execute if score @s ValkyrieBoltTime matches ..-1 run function explorers_eve:boss/valkyrie_queen/bolt_strike
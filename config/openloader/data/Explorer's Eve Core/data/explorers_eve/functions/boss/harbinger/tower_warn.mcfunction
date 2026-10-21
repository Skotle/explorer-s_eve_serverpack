#Create lots of particles to tell the player to scoot away!
particle end_rod ~ ~1.25 ~ 0.2 0.7 0.2 0.01 2 force @a[distance=..80]
particle end_rod ~ ~ ~ 0.25 0.1 0.25 0.1 3 force @a[distance=..80]
particle dust 1 0 0 2 ~ ~0.1 ~ 3 0.1 3 0.05 30 force @a[distance=..80]

#When the timer concludes, explosion!
execute if score @s HarbingerTowerTime matches -1 run function explorers_eve:boss/harbinger/tower_explode
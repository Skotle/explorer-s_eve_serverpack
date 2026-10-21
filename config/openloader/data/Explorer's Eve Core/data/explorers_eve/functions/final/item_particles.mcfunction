#Particles to show where this item is!
particle minecraft:end_rod ~ ~ ~ 0.25 4 0.25 0.05 20 force @a
particle dust 1 0 1 10 ~ ~ ~ 0.25 4 0.25 0.05 20 force @a
execute positioned ~ ~8 ~ if block ~ ~ ~ air run function explorers_eve:final/item_particles
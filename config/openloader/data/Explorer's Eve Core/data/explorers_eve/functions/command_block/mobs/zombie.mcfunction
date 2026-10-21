#Zombies get random, powerful weapons. Swords are most common and have knockback. Axes are less common, and other tools are even less common.
loot replace entity @s weapon.mainhand loot explorers_eve:bowels_zombie_weapons

#Also, slow down! Unless it's the resummoned battle, then don't slow down.
execute if biome ~ ~ ~ witherstormmod:bowels unless entity @w[tag=Resummoned] run attribute @s minecraft:generic.movement_speed modifier add 1d53604f-3874-43cb-b668-ad31de8430d7 LessSpeed -0.05 add
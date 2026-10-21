#Burn anything nearby.
execute as @e[type=!player,type=!item,predicate=!explorers_eve:on_fire,distance=..4] run data modify entity @s Fire set value 80s
effect give @e[type=!player,predicate=explorers_eve:on_fire,distance=..6] cataclysm:blazing_brand 5 1 true
playsound cataclysm:flame_burst player @a ~ ~ ~ 0.8 2

#Particles!
particle minecraft:flame ~0.7 ~ ~0.3 0 0.25 0 1 0
particle minecraft:flame ~0.7 ~ ~-0.3 0 0.25 0 1 0
particle minecraft:flame ~0.3 ~ ~0.7 0 0.25 0 1 0
particle minecraft:flame ~-0.3 ~ ~0.7 0 0.25 0 1 0
particle minecraft:flame ~-0.7 ~ ~-0.3 0 0.25 0 1 0
particle minecraft:flame ~-0.7 ~ ~0.3 0 0.25 0 1 0
particle minecraft:flame ~-0.3 ~ ~-0.7 0 0.25 0 1 0
particle minecraft:flame ~0.3 ~ ~-0.7 0 0.25 0 1 0
particle minecraft:flame ~0.7 ~-1.5 ~0.3 0.1167 0.25 0.05 1 0
particle minecraft:flame ~0.7 ~-1.5 ~-0.3 0.1167 0.25 -0.05 1 0
particle minecraft:flame ~0.3 ~-1.5 ~0.7 0.05 0.25 0.1167 1 0
particle minecraft:flame ~-0.3 ~-1.5 ~0.7 -0.05 0.25 0.1167 1 0
particle minecraft:flame ~-0.7 ~-1.5 ~-0.3 -0.1167 0.25 -0.05 1 0
particle minecraft:flame ~-0.7 ~-1.5 ~0.3 -0.1167 0.25 0.05 1 0
particle minecraft:flame ~-0.3 ~-1.5 ~-0.7 -0.05 0.25 -0.1167 1 0
particle minecraft:flame ~0.3 ~-1.5 ~-0.7 0.05 0.25 -0.1167 1 0
particle minecraft:explosion ~ ~ ~ 0 0 0 0 0
particle flame ~ ~ ~ 0.25 0.25 0.25 0.3 40
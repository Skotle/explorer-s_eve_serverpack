#The Monstrosity jumps and roars.
playsound cataclysm:monstrositygrowl hostile @a ~ ~ ~ 2 1
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1.5
particle minecraft:lava ~ ~2 ~ 2 1 2 0 100
particle minecraft:flame ~ ~2 ~ 2 1 2 0.05 100
data modify entity @s Motion[1] set value 1.5d
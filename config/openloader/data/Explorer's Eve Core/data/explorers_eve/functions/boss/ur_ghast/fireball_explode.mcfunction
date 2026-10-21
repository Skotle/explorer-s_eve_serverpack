#Spawn several blocks of fire and toss them around.
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[0.2d,0.5d,0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[0.2d,0.5d,-0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[-0.2d,0.5d,0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[-0.2d,0.5d,-0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[0.1d,0.5d,0.2d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[-0.1d,0.5d,0.2d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[0.1d,0.5d,-0.2d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[-0.1d,0.5d,-0.2d]}

#Give the blocks momentum and effects.
execute as @e[tag=FireLaunch] at @s run function explorers_eve:boss/ur_ghast/fireball_launch
particle flame ~ ~ ~ 0.25 0.25 0.25 0.3 40
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1.5

kill @s
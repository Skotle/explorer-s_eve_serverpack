#Spawn several blocks of fire and toss them around.
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[0.2d,0.5d,0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[0.2d,0.5d,-0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[-0.2d,0.5d,0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[-0.2d,0.5d,-0.1d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[0.1d,0.5d,0.2d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[-0.1d,0.5d,0.2d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[0.1d,0.5d,-0.2d]}
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1,Tags:["FireLaunch"],Motion:[-0.1d,0.5d,-0.2d]}
execute unless score @s ZetaCharges matches 5.. run kill @e[tag=FireLaunch,distance=..3,sort=random,limit=5]
execute if predicate explorers_eve:structure/blue_skies_dungeon run kill @e[tag=FireLaunch,distance=..3]
tag @e[tag=FireLaunch,distance=..3] remove FireLaunch
particle flame ~ ~ ~ 0.25 0.25 0.25 0.3 40

#Also burn anything nearby.
execute as @e[type=!player,distance=..5] run data modify entity @s Fire set value 160s
execute as @e[type=!player,distance=..5] run damage @s 4 minecraft:explosion by @p[gamemode=!spectator]

#On high power, apply debilitating effects.
execute if score @s ZetaCharges matches 5.. run function explorers_eve:item/prototype_zeta/explode_effects

#Dispose of the marker.
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 4 2
kill @s
#Spawn several blocks of lava and toss them around.
summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Tags:["LavaLaunch"],Passengers:[{id:"minecraft:fireball",power:[0.0,-1.0,0.0],ExplosionPower:0,Passengers:[{id:"minecraft:marker",Tags:["HydraLava"]}]}]}
summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Tags:["LavaLaunch"],Passengers:[{id:"minecraft:fireball",power:[0.0,-1.0,0.0],ExplosionPower:0,Passengers:[{id:"minecraft:marker",Tags:["HydraLava"]}]}]}
summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Tags:["LavaLaunch"],Passengers:[{id:"minecraft:fireball",power:[0.0,-1.0,0.0],ExplosionPower:0,Passengers:[{id:"minecraft:marker",Tags:["HydraLava"]}]}]}
execute unless entity @s[tag=Phase2] run summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Tags:["LavaLaunch"],Passengers:[{id:"minecraft:fireball",power:[0.0,-1.0,0.0],ExplosionPower:0,Passengers:[{id:"minecraft:marker",Tags:["HydraLava"]}]}]}
execute unless entity @s[tag=Phase2] run summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Tags:["LavaLaunch"],Passengers:[{id:"minecraft:fireball",power:[0.0,-1.0,0.0],ExplosionPower:0,Passengers:[{id:"minecraft:marker",Tags:["HydraLava"]}]}]}
execute if entity @s[tag=FinalBattle] run summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Tags:["LavaLaunch"],Passengers:[{id:"minecraft:fireball",power:[0.0,-1.0,0.0],ExplosionPower:0,Passengers:[{id:"minecraft:marker",Tags:["HydraLava"]}]}]}
execute if entity @s[tag=FinalBattle] run summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Tags:["LavaLaunch"],Passengers:[{id:"minecraft:fireball",power:[0.0,-1.0,0.0],ExplosionPower:0,Passengers:[{id:"minecraft:marker",Tags:["HydraLava"]}]}]}
execute if entity @s[tag=FinalBattle] run summon falling_block ~ ~10 ~ {BlockState:{Name:"minecraft:lava"},Time:1,Tags:["LavaLaunch"],Passengers:[{id:"minecraft:fireball",power:[0.0,-1.0,0.0],ExplosionPower:0,Passengers:[{id:"minecraft:marker",Tags:["HydraLava"]}]}]}

#Give the blocks momentum and effects.
execute as @e[tag=LavaLaunch] at @s run function explorers_eve:boss/hydra/lava_toss
playsound cataclysm:flame_burst hostile @a ~ ~ ~ 3 2

#Reset the timer, with some randomness.
scoreboard players set @s RandomRange 100
function explorers_eve:random
scoreboard players operation @s HydraLava = @s RandomValue
scoreboard players add @s HydraLava 500
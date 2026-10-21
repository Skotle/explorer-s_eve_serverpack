#Spawn several vortexes.
summon cataclysm:void_vortex ~ ~ ~ {Lifespan:100}
summon cataclysm:void_vortex ~ ~ ~ {Lifespan:100}
summon cataclysm:void_vortex ~ ~ ~ {Lifespan:100}
execute if score @s Health matches ..100 run summon cataclysm:void_vortex ~ ~ ~ {Lifespan:100}
execute if score @s Health matches ..100 run summon cataclysm:void_vortex ~ ~ ~ {Lifespan:100}
spreadplayers ~ ~ 4 25 false @e[type=cataclysm:void_vortex,limit=5,sort=nearest,distance=..0.5]

#Oh, and start a new delay.
scoreboard players set @s RandomRange 100
execute if entity @s[scores={Health=..50}] run scoreboard players remove @s RandomRange 95
function explorers_eve:random
scoreboard players operation @s EnderGuardianTime = @s RandomValue
scoreboard players add @s EnderGuardianTime 150
execute if entity @s[scores={Health=..125}] run scoreboard players remove @s EnderGuardianTime 105
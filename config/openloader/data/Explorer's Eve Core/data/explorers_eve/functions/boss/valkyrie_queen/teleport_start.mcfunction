#Prepare to teleport.
execute as @e[tag=ValkyrieTeleportMark,distance=..60] at @s unless entity @a[distance=..6] run tag @s add ValkyrieTeleportPotential
execute if entity @e[tag=ValkyrieTeleportPotential,sort=random,distance=..60,limit=1] run particle dust 1 1 1 1 ~ ~1 ~ 0.3 0.5 0.3 10 20
execute at @e[tag=ValkyrieTeleportPotential,sort=random,distance=..60,limit=1] run function explorers_eve:boss/valkyrie_queen/teleport_effects
tag @e[tag=ValkyrieTeleportPotential,distance=..60] remove ValkyrieTeleportPotential

#Reset the timer.
scoreboard players set @s RandomRange 250
function explorers_eve:random
scoreboard players operation @s ValkyrieTeleportTime = @s RandomValue
scoreboard players add @s ValkyrieTeleportTime 500
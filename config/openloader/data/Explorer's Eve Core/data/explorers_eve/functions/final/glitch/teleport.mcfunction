#Teleport.
execute at @r[tag=FinalBattling] run spreadplayers ~ ~ 0 24 false @e[tag=CommandRide,limit=1,sort=nearest]
execute as @e[tag=CommandRide,limit=1,sort=nearest] at @s if entity @p[gamemode=!spectator,distance=..16] facing entity @p[gamemode=!spectator] eyes rotated ~ 0 run tp @s ^ ^ ^-16
execute as @e[tag=CommandRide,limit=1,sort=nearest] at @s run tp @s ~ ~16 ~
tp @s @e[tag=CommandRide,limit=1,sort=nearest]

#Effects!
execute at @s run particle minecraft:flash ~ ~ ~
execute at @s run particle end_rod ~ ~ ~ 0.35 0.35 0.35 0.3 40 force
execute at @s run playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 10 1.5
execute at @s run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..200] ~ ~ ~ 10
execute at @s run function explorers_eve:final/glitch/firework
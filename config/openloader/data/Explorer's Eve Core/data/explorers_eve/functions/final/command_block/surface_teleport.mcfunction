#Put the Command Block above the surface.
execute positioned over world_surface run tp @e[tag=CommandRide,limit=1,sort=nearest] ~ ~16 ~
execute at @s run particle minecraft:flash ~ ~ ~
execute at @s run playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 10 1.5
execute at @s run playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..200] ~ ~ ~ 10
scoreboard players reset @s CommandSurfaceTime
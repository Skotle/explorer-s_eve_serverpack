#Move the marker.
execute unless entity @a[gamemode=!spectator,distance=..48] as @e[tag=UrGhastRide,limit=1] at @s facing entity @p[gamemode=!spectator] eyes rotated ~ 0 run tp @s ^ ^ ^1
execute unless entity @e[tag=UrGhastRide] run function explorers_eve:final/glitch/boss/ur_ghast_ride
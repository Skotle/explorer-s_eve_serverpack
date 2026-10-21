#Used in the rematch.
execute at @r[gamemode=!spectator,predicate=explorers_eve:glitch] run spreadplayers ~ ~ 4 8 false @s
execute at @s run tp @s ~ ~6 ~ facing entity @p[gamemode=!spectator] eyes
execute at @s unless entity @a[gamemode=!spectator,distance=..20] at @p[gamemode=!spectator] run tp @s ~ ~6 ~ 
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[predicate=explorers_eve:glitch] ~ ~ ~ 2 1.5 1
execute at @s run playsound twilightforest:entity.twilightforest.iceguardian.death hostile @a[predicate=explorers_eve:glitch] ~ ~ ~ 2 1 1
execute at @s run particle minecraft:snowflake ~ ~1.25 ~ 0.5 0.75 0.5 0.05 100

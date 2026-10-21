#Used in the rematch.
tag @s remove LaserActive
kill @e[tag=LaserTarget,limit=1,sort=nearest]

execute at @r[gamemode=!spectator,predicate=explorers_eve:glitch] run spreadplayers ~ ~ 4 16 false @s
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[predicate=explorers_eve:glitch] ~ ~ ~ 2 1.5 1
execute at @s run playsound cataclysm:flame_burst hostile @a ~ ~ ~ 3 2
execute at @s run particle flame ~ ~2 ~ 1 2 1 0.05 100
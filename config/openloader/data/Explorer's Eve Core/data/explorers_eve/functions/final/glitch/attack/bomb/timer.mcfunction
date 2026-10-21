#Keep moving.
execute as @e[tag=GlitchBomb] at @s facing entity @p[gamemode=!spectator] eyes rotated ~ 0 run tp @s ^ ^ ^0.15
execute at @e[tag=GlitchBomb,limit=1,sort=nearest] facing entity @e[tag=CommandRide,limit=1,sort=nearest] eyes rotated ~30 0 positioned ^ ^ ^1.5 run tp @e[tag=CommandRide,limit=1] ~ ~ ~
execute facing entity @e[tag=GlitchBomb,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^ ^18 run particle end_rod ~ ~ ~ 0.05 0.05 0.05 0.015 1 force
execute facing entity @e[tag=GlitchBomb,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^6 ^12 run particle end_rod ~ ~ ~ 0.05 0.05 0.05 0.015 1 force
execute facing entity @e[tag=GlitchBomb,limit=1,sort=nearest] eyes rotated ~ 0 positioned ^ ^-6 ^12 run particle end_rod ~ ~ ~ 0.05 0.05 0.05 0.015 1 force
execute at @e[tag=GlitchBomb,limit=1,sort=nearest] positioned ~ ~-8 ~ run particle end_rod ~ ~ ~ 0.05 4 0.05 0.015 10 force

#Once time's up, detonate.
execute if score @s GlitchAttackTime matches 313.. run function explorers_eve:final/glitch/attack/bomb/detonate
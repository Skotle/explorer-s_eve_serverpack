#Move closer and sometimes make particles.
scoreboard players add @s GlitchParticleTime 1
execute if score @s GlitchParticleTime matches 20.. at @e[tag=CommandFinalBoss,limit=1,sort=nearest] anchored eyes facing entity @s eyes positioned ^ ^ ^0.75 run function explorers_eve:final/glitch/line_particles

execute facing entity @e[tag=CommandFinalBoss,limit=1,sort=nearest] eyes run tp @s ^ ^ ^0.7
execute if entity @e[tag=CommandFinalBoss,distance=..12] run function explorers_eve:final/player/drop
execute if entity @e[tag=CommandFinalBoss,tag=ShortCircuit] run function explorers_eve:final/player/drop
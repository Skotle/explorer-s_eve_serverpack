#Make particles, then move 'forward' and repeat until leaving the world.
scoreboard players add @s GlitchParticleTime 1
execute if score @s GlitchParticleTime matches 3.. run particle end_rod ~ ~ ~ 0.05 0.05 0.05 0 1
execute if score @s GlitchParticleTime matches 3.. run scoreboard players set @s GlitchParticleTime 0
execute positioned ^ ^ ^0.5 unless entity @s[distance=..1] run function explorers_eve:final/glitch/line_particles
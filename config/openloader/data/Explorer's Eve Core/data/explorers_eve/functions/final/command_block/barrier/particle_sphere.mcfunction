#Make a sphere. Also taken from this video: https://www.youtube.com/watch?v=-00r3n--Lg8
function explorers_eve:final/command_block/barrier/particle_circle
scoreboard players add @s BarrierParticles2 1
execute unless score @s BarrierParticles2 matches 8.. rotated ~ ~20 run function explorers_eve:final/command_block/barrier/particle_sphere
scoreboard players reset @s BarrierParticles2
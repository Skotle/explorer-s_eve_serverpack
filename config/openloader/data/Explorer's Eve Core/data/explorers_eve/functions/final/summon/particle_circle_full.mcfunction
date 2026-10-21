#Make a circle. Taken from this video: https://www.youtube.com/watch?v=-00r3n--Lg8
particle dust 1 0 1 4 ^ ^ ^5 0 0 0 0 1 force
scoreboard players add @s BarrierParticles 1
execute unless score @s BarrierParticles matches 72.. rotated ~5 ~ run function explorers_eve:final/summon/particle_circle_full
scoreboard players reset @s BarrierParticles
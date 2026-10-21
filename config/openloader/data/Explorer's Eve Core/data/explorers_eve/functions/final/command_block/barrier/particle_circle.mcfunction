#Make a circle. Taken from this video: https://www.youtube.com/watch?v=-00r3n--Lg8
particle minecraft:end_rod ^ ^ ^1 0 0 0 0 1 force
scoreboard players add @s BarrierParticles 1
execute unless score @s BarrierParticles matches 10.. rotated ~36 ~ run function explorers_eve:final/command_block/barrier/particle_circle
scoreboard players reset @s BarrierParticles
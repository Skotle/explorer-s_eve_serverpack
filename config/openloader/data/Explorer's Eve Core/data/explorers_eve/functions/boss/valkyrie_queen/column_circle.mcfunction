#Make a circle.
particle minecraft:end_rod ^ ^ ^4 0 0 0 0 1 force
scoreboard players add @s BarrierParticles2 1
execute unless score @s BarrierParticles2 matches 18.. rotated ~20 ~ run function explorers_eve:boss/valkyrie_queen/column_circle
scoreboard players reset @s BarrierParticles2
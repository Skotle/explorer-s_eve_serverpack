#Measure how far away the player is.
execute if entity @e[tag=DigSkullTarget,distance=..5] run tag @s add MeasurementDone
execute unless entity @s[tag=MeasurementDone] unless block ~ ~ ~ #explorers_eve:dig_measure_ignore run scoreboard players add @s BlockCount 1
execute if entity @w[distance=..100] positioned ^ ^ ^0.25 run function explorers_eve:storm/attack/dig/measure
execute unless entity @w[distance=..100] unless block ~ ~ ~ void_air positioned ^ ^ ^0.25 run function explorers_eve:storm/attack/dig/measure
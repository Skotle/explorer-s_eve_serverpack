#Mark the target.
playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 1.5
particle minecraft:witch ~ ~ ~ 0.25 0.25 0.1 1 10 force
tag @s add AllyVexTarget
execute as @p[tag=VexationTotemUsing] at @s run function explorers_eve:item/vexation_totem/vex
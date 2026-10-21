#Tick down the timer and make particles.
scoreboard players add @s BlindingTime 1
particle blue_skies:star_flare 1 1 1 ~ ~0.25 ~ 0.25 0.5 0.25 0.01 2
execute if score @s BlindingTime matches 3.. run function explorers_eve:boss/blinding/spawn_activate
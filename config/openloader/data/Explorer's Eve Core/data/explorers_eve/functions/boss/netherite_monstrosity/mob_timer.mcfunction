#Tick down the timer and make particles.
scoreboard players add @s MonstrosityTime 1
particle minecraft:lava ~ ~2 ~ 0.5 0.25 0.5 1 1
execute if score @s MonstrosityTime matches 50.. run function explorers_eve:boss/netherite_monstrosity/mob_spawn
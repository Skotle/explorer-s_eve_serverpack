#Phase transition effects.
particle minecraft:lava ~ ~2 ~ 2 1 2 0 4
execute at @e[tag=NetheriteMonstrosityCore,limit=1,sort=nearest] run particle minecraft:dripping_lava ~ ~9 ~ 5 0.5 5 0 10

scoreboard players add @s MonstrosityPhaseTransition 1
execute if score @s MonstrosityPhaseTransition matches 75 run data modify entity @s Motion[1] set value 1.5d
execute if score @s MonstrosityPhaseTransition matches 100.. at @e[tag=NetheriteMonstrosityCore,limit=1,sort=nearest] run function explorers_eve:boss/netherite_monstrosity/phase_3
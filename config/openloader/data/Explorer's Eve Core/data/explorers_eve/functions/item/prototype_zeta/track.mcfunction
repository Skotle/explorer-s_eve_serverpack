#Follow the fireball.
particle minecraft:dust 0.75 0.75 0 1 ~ ~ ~ 0 0 0 1 1 force
particle minecraft:dust 0.75 0.75 0 2 ~ ~ ~ 0.25 0.25 0.25 1 2 force

execute unless entity @e[tag=ZetaShot,distance=..2] run function explorers_eve:item/prototype_zeta/explode
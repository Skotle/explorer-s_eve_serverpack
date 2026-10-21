#Spawn fireballs, and after a delay, will do the opposite.
tag @s add FireballActive

#Randomly pick which angle to use first.
scoreboard players set @s RandomRange 2
function explorers_eve:random

execute if score @s RandomValue matches 0 run function explorers_eve:final/glitch/attack/fireball/cardinal
execute if score @s RandomValue matches 1 run function explorers_eve:final/glitch/attack/fireball/diagonal
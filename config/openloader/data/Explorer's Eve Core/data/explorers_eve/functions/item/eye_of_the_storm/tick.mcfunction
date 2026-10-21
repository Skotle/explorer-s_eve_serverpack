#Increment scores.
scoreboard players add @e[tag=DefenseSpikeMark] Math 1
execute as @e[tag=DefenseSpikeMark,scores={Math=24..}] at @s run function explorers_eve:item/eye_of_the_storm/spawn_spike
execute if entity @e[tag=DefenseSpikeMark] run schedule function explorers_eve:item/eye_of_the_storm/tick 1t